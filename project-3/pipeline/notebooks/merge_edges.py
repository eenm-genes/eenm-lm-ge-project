import os
import csv
import re
import argparse

def merge_all_columns_with_extra(input_dir, output_file):
    # Lista para armazenar as linhas de dados de todos os arquivos
    all_rows = []
    headers_written = False

    # Itera sobre todos os arquivos no diretório
    for filename in os.listdir(input_dir):
        if filename.endswith('.tsv'):
            filepath = os.path.join(input_dir, filename)
            
            ref = None
            name = None
            match = re.search(r'(?:ctss|actb|cxcl10)_(.*?)_(GO_\d+)\.tsv$', filename)
            if match:
                name = match.group(1).replace('_', ' ').title()
                ref = match.group(2).replace('_', ':')

            # Segundo padrão: PMID_(ID)_..._(Título).tsv
            match = re.search(r'PMID_(\d+)_\d+_\d+_(.*)\.tsv$', filename)
            if match:
                ref = f"PMID:{match.group(1)}"
                name = match.group(2).replace('_', ' ').title()

            with open(filepath, 'r', newline='') as tsvfile:
                reader = csv.reader(tsvfile, delimiter='\t')
                headers = next(reader)  # Lê o cabeçalho

                if not headers_written:
                    # Adiciona a nova coluna ao cabeçalho
                    headers.append('ref')
                    headers.append('name')
                    # Escreve o cabeçalho no arquivo de saída uma única vez
                    all_rows.append(headers)
                    headers_written = True

                # Adiciona todas as linhas de dados ao all_rows com o valor da nova coluna
                for row in reader:
                    row.append(ref)
                    row.append(name)
                    all_rows.append(row)

    # Escreve os dados mesclados em um novo arquivo TSV
    with open(output_file, 'w', newline='') as tsvfile:
        writer = csv.writer(tsvfile, delimiter='\t')
        # Escreve todas as linhas de dados
        writer.writerows(all_rows)

def main():
    parser = argparse.ArgumentParser(description="Merge TSV files with additional columns")
    parser.add_argument('input_dir', type=str, help='Input directory containing TSV files')
    parser.add_argument('output_file', type=str, help='Output TSV file')

    args = parser.parse_args()
    
    merge_all_columns_with_extra(args.input_dir, args.output_file)

if __name__ == "__main__":
    main()

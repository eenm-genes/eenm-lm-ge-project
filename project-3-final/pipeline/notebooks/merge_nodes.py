import os
import csv
import argparse

def merge_tsv_columns(input_dirs, output_file):
    # Dicionário para armazenar os valores das colunas extraídas de cada arquivo, eliminando duplicatas
    merged_nodes = set()

    # Itera sobre todos os diretórios de entrada
    for input_dir in input_dirs:
        # Itera sobre todos os arquivos no diretório
        for filename in os.listdir(input_dir):
            if filename.endswith('.tsv'):
                filepath = os.path.join(input_dir, filename)
                with open(filepath, 'r', newline='') as tsvfile:
                    reader = csv.reader(tsvfile, delimiter='\t')
                    headers = next(reader)  # Lê o cabeçalho

                    # Verifica se as colunas #node1 e node2 estão presentes
                    if '#node1' not in headers or 'node2' not in headers:
                        print(f"Skipping file {filename}: required columns not found")
                        print(f"Headers found: {headers}")
                        continue

                    node1_index = headers.index('#node1')
                    node2_index = headers.index('node2')

                    # Extrai os valores das colunas #node1 e node2 e adiciona ao conjunto
                    for row in reader:
                        if row[node1_index]:
                            merged_nodes.add(row[node1_index])
                        if row[node2_index]:
                            merged_nodes.add(row[node2_index])

    # Escreve os valores mesclados em um novo arquivo TSV
    with open(output_file, 'w', newline='') as tsvfile:
        writer = csv.writer(tsvfile, delimiter='\t')
        # Escreve o cabeçalho
        writer.writerow(['node'])
        # Escreve os valores únicos na coluna node
        for node in sorted(merged_nodes):
            writer.writerow([node])

def main():
    parser = argparse.ArgumentParser(description="Merge columns from TSV files into a single TSV file with unique nodes")
    parser.add_argument('input_dirs', type=str, nargs='+', help='Input directories containing TSV files')
    parser.add_argument('output_file', type=str, help='Output TSV file')

    args = parser.parse_args()
    
    merge_tsv_columns(args.input_dirs, args.output_file)

if __name__ == "__main__":
    main()

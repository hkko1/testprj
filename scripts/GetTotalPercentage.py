import csv
import sys


if len(sys.argv) != 2:
    print("Insufficient argements")
    sys.exit()

file_path = sys.argv[1]
#print('file_path:{0}'.format(file_path))

#jacoco_csv_file = 'target/site/jacoco/jacoco.csv'
jacoco_csv_file = file_path
with open(jacoco_csv_file) as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    number_of_total = 0
    number_of_covered = 0
    for row in csv_reader:
        if line_count > 0:
            missed = int(row[3])
            covered = int(row[4])
            #print('INSTRUCTION_MISSED: {0} , INSTRUCTION_COVERED: {1} '.format(missed, covered))

            number_of_covered += covered
            number_of_total += missed + covered

        line_count += 1
    #total_coverage = 100.0 * number_of_covered / number_of_total
    #print('Total coverage:: {1:.2f}%'.format(line_count, total_coverage))
    total_coverage = 100 * number_of_covered / number_of_total
    value = int(total_coverage)
    color = 'red'
    if value >= 90 :
        color = 'brightgreen'
    elif value >= 70 :
        color = 'green'
    elif value >= 50 :
        color = 'yellowgreen'
    elif value >= 30 :
        color = 'yellow'
    else value >= 10 :
        color = 'orange'

    print('{1}%25-{color}'.format(int(total_coverage),color))
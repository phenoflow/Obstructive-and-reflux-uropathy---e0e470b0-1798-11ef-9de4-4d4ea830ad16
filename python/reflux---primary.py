# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"15835.0","system":"readv2"},{"code":"31841.0","system":"readv2"},{"code":"3277.0","system":"readv2"},{"code":"27592.0","system":"readv2"},{"code":"12095.0","system":"readv2"},{"code":"8877.0","system":"readv2"},{"code":"48616.0","system":"readv2"},{"code":"72621.0","system":"readv2"},{"code":"10410.0","system":"readv2"},{"code":"3485.0","system":"readv2"},{"code":"28159.0","system":"readv2"},{"code":"4890.0","system":"readv2"},{"code":"107866.0","system":"readv2"},{"code":"2420.0","system":"readv2"},{"code":"17778.0","system":"readv2"},{"code":"6792.0","system":"readv2"},{"code":"98067.0","system":"readv2"},{"code":"105941.0","system":"readv2"},{"code":"4443.0","system":"readv2"},{"code":"2365.0","system":"readv2"},{"code":"27302.0","system":"readv2"},{"code":"15688.0","system":"readv2"},{"code":"2421.0","system":"readv2"},{"code":"8522.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('obstructive-and-reflux-uropathy-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["reflux---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["reflux---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["reflux---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

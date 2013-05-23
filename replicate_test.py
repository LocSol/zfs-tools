'''
Created on Apr 18, 2013

@author: ecooper
'''

import zfslib
import zreplicate

if __name__ == '__main__':
    exec_file('zreplicate -C -v -t -o dpool ecooper@199.73.30.220 -p 4122 bpool/backup/ecooper/ubu-zfs-testvm')
    
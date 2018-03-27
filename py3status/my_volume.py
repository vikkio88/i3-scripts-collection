import re
from time import time
from subprocess import check_output


class Py3status:

    def my_volume(self):
        complete = check_output(['amixer', '-D', 'pulse', 'sget', 'Master']).decode('utf-8')
        complete = ''.join(complete.splitlines())
        m = re.search('\[(\d+?)%\] \[on\]', complete)
        result = '-'
        if m is not None:
            result = m.group(1)

        return {
            'full_text': '♪ {}'.format(result),
            'cached_until': time() + 3
        }

if __name__ == "__main__":
    a = Py3status()
    print(a.my_volume()['cached_until'])
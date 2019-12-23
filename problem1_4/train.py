import time
import threading
def main():
	time.sleep(100)
def test_process():
	time.sleep(30)
if __name__ == '__main__':
    thread_list=[]
    for i in range(10):
        t=threading.Thread(target=test_process,name='loopTread')
        t.start()
        time.sleep(5)
        thread_list.append(t)
    for t in thread_list:
        t.join()


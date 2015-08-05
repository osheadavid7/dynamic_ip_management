all: dynamic_ip_management.py

%.py: %.ipynb
	ipython2 nbconvert --to python $<

clean:
	rm -f dynamic_ip_management.py

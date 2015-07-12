#TARGETS = dynamic_ip_management.py

all: dynamic_ip_management.py #TARGETS

%.py: %.ipynb
	ipython2 nbconvert --to python $<

clean:
	rm -f $(TARGETS)

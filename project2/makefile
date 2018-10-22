#!/usr/bin/env bash
nc_plot.png: KCLT.csv plot_yrtemp_function.R nc_plot.R
	Rscript nc_plot.R

la_plot.png: KCQT.csv plot_yrtemp_function.R la_plot.R
	Rscript la_plot.R

ny_plot.png: KNYC.csv plot_yrtemp_function.R ny_plot.R
	Rscript ny_plot.R

jack_plot.png: KJAX.csv plot_yrtemp_function.R jack_plot.R
	Rscript jack_plot.R

nc_table.csv: KCLT.csv nc_table.R
	Rscript nc_table.R
ngc batch run --name "qsg-jupyterlab" --preempt RUNONCE --ace nv-us-west-2 --instance dgx1v.32g.2.norm --commandline "jupyter lab --ip=0.0.0.0 --allow-root --no-browser --NotebookApp.token='' --notebook-dir=/ --NotebookApp.allow_origin='*' & date; sleep 200000h" --result /result --image "nvidia/nvtabular:0.1" --org nvidian --team rapids --port 8888
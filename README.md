# hec cluster tutorial

## Steps to Compile your project in Hec
* use `mpicc` or `mpicxx` to build your project
  * `mpicxx main.cpp -o sample`
## Steps to run your project
* ensure your project binary is in home directory
* create a slurm script. [sample script here](sample.sh)
  * note the commands used in script
    * all slurm commands start with `#` if you need to comment you need to use `##`
    * for slurm command we need to use SBATCH
      * OPTIONS for SBATCH
        * `-N #` number of nodes
        * `-J <string>` job_name
        * `--ntasks-per-node=#` processes to be allocated per node
        * `-ntasks=#` total number of processes
  * then once configuration is done run the command `srun`
    * `srun` schedules your job using slurm
      *  format `srun --mpi=pmix <full-path-to-executable>`
* you can launch the job using the following command
  * `sbatch <path-to-script>` (e.g. `sbatch /mnt/common/hdevarajan/sample/sample.sh`)
  * the above command will return you a job_id
* to check status of job squeue --all
* NOTE: that all stdout and stderr will be redirected by slurm to slurm-<job_id>.out in the folder where you run the `sbatch`.

echo ""
NOMEMAQUINA=$(hostname)
DATAHORAATUAL=$(date +%D:%H:%M:%S)
MAQUINAATIVA=$(uptime -s)
VERSAOKERNEL=$(uname -v | cut -d: -f1)
QTDECPU=$(cat /proc/cpuinfo | grep processor | wc -l)
MODELOCPU=$(cat /proc/cpuinfo | grep model | sed -n '2p' | cut -f2 | sed -e 's/[^ ]* //')
MEMORIATOTAL=$(expr $(cat /proc/meminfo | grep MemTotal | tr -d ' ' | cut -d: -f2 | tr -d kB) / 1024)
PARTICOESMAQUINA=$(sudo df -hT | egrep -v '(tmpfs|udev|vfat|squashfs)')

echo "O NOME DA MÁQUINA: $NOMEMAQUINA"
echo ""
echo "A HORA ATUAL DA MÁQUINA: $DATAHORAATUAL"
echo ""
echo "A MÁQUINA ESTÁ ATIVA DESDE: $MAQUINAATIVA"
echo ""
echo "A VERSÃO DO KERNEL: $VERSAOKERNEL"
echo ""
echo "A MÁQUINA TEM $QTDECPU CPUS"
echo ""
echo "O MODELO DO CPU: $MODELOCPU"
echo ""
echo "A MEMÓRIA TOTAL DA MÁQUINA: $MEMORIATOTAL MB" 
echo ""
echo "PARTIÇÕES DA MÁQUINA: $PARTICOESMAQUINA"
echo ""

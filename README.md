---
title:
- SOPE - Documentos para consulta em exame

author:
- Diogo Miguel Ferreira Rodrigues (<dmfrodrigues2000@gmail.com>)

date:
- 19th of June, 2020

geometry:
- top=25mm
- bottom=25mm
- left=25mm
- right=25mm

urlcolor: #0645AD
...

# API do Unix/Linux

* **TP01** | Programação em Unix: Introdução
    - **TP01.1** | Quick review of some C concepts
    - **TP01.2** | Arrays, C-string and pointers; dynamic allocation of memory
* **TP02** | Consola, ficheiros e diretórios
    - **TP02.1** | Exemplos
* **TP03** | Criação e terminação de processos
    - **TP03.1** | Exemplos: `fork`, `exec`, `system`
* **TP04** | Sinais
    - **Parte 1** | Teoria; funções Unix System V (`signal`)
    - **Parte 2** | Exemplos; funções POSIX (`sigaction`)
    - **TP04.1** | Exemplos, funções Unix System V
    - **TP04.2** | Exemplos, funções POSIX
* **TP05** | Pipes e FIFOs
    - **Parte 1** | Pipes
    - **Parte 2** | FIFOs
    - **TP05.1** | Exemplos, pipes
    - **TP05.2** | Exemplos, FIFOs
* **TP06** | Threads
    - **TP06.1** | Exemplos
* **TP07** | Comunicação entre processos/threads
    - **TP07.1** | Exemplos
* **TP08** | Sincronização de threads
    - **TP08.1** | Exemplos

## **TP01** | Programação em Unix: Introdução
- Diferença entre funções da API Unix (`man 1`/`man 2`) e da biblioteca de C (`man 3`)
- Programas C: compilação (`cc`, `gcc`), headers, libraries
- Argumentos da linha de comandos (`argc`, `argv`) e variáveis de ambiente (`envp`, `getenv`)
- Terminação de programas (`exit`, `_exit`, `atexit`) e tratamento de erros (`errno`)
- Medição do tempo de execução (`times`)

## **TP02** | Consola, ficheiros e diretórios
- Descritores de ficheiros, os 3 descritores standard (`STDIN_FILENO`, `STDOUT_FILENO`, `STDERR_FILENO`)
- Manipular características da consola (`tcgetattr`, `tcsetattr`)
- Manipulação de ficheiros (`open`, `read`, `write`, `close`, `unlink`), deslocamento do file pointer (`lseek`), obter informações de ficheiros/diretórios (`stat`), outras chamadas...
- Duplicação de descritores (`dup`, `dup2`)
- Hard links (`ln`) e symbolic links (`ln -s`) 

## **TP03** | Criação e terminação de processos
- Criar processos (`fork`), informação sobre processos (`getpid`, `getppid`)
- Processos zombie
- Esperar por processos (`wait`, `waitpid`)
- Substituir processos (`exec`)
- Correr comandos shell (`system`)

## **TP04** | Sinais
### Parte 1
- O que é um sinal; alguns sinais (`SIGINT`, `SIGKILL`, `SIGSTOP`, `SIGTERM`, `SIGABRT`, `SIGALRM`, `SIGUSR1`)
- Como lidar com sinais; respostas por omissão aos sinais; instalação de signal handlers
- Unix System V (`signal`)
- Outras funções de sinais (`kill`, `raise`, `alarm`, `pause`, `abort`, `sleep`)

### Parte 2
- Exemplos de Unix System V
- Funções POSIX (`sigaction`, `sigprocmask`, `sigpending`, `sigsuspend`)

## **TP05** | Pipes e FIFOs
### Parte 1 | Pipes/unnamed FIFOs
- Conversão de file descriptor para `FILE*` (`fdopen`)
- Funções de pipes (`pipe`)
- Criar pipes de e para os `stdout`/`stderr` de processos (`popen`, `pclose`)
- Filtros e coprocessos

### Parte 2 | FIFOs/named FIFOs
- Funções de FIFOs (`mkfifo`, `open`, `write`/`read`, `close`, `unlink`)
- Regras de funcionamento das FIFOs
- Comunicação entre processos de máquinas diferentes, Network File System (NFS)

## **TP06** | Threads
- Como compilar programas em C para usar threads (`-pthread`)
- Criar e terminar threads (`pthread_create`, `pthread_exit`, `pthread_cancel`)
- Esperar pela terminação de threads (`pthread_join`)
- Joinable e detached threads, e converter joinable thread para detached (`pthread_detach`)

## **TP07** | Comunicação entre processos/threads
- Compilar programas em C para usar métodos POSIX de Inter-Process Communication (IPC) (`-lrt`)
- Filas de mensagens (`mq_open`, `mq_send`, `mq_receive`, ...)
- Semáforos (`sem_wait`, `sem_trywait`, `sem_post`, `sem_getvalue`)
    - Named semaphores, para usar entre vários processos (`sem_open`, `sem_close`, `sem_unlink`)
    - Unnamed semaphores, para usar em processos com memória partilhada/threads (`sem_init`, `sem_destroy`)
- Memória partilhada (`shm_open`, `shm_unlink`, `ftruncate`, `mmap`, `munmap`)

## **TP08** | Sincronização de threads
- Semáforos (cap. anterior)
- Mutexes (`pthread_mutex_t`, `PTHREAD_MUTEX_INITIALIZER`)
```c
pthread_mutex_init
              lock
              trylock
              unlock
              destroy
```
- Condition variable, um conceito de uma variável condicional associada a um mutex, permite non-busy wait em vez de se estar sempre a fazer poll dessa variável (`pthread_cond_t`, `PTHREAD_COND_INITIALIZER`)
```c
pthread_cond_init
             wait
             signal
             broadcast
             destroy
```

# Teoria dos Sistemas Operativos

- **T01/T02/T03** | Introdução aos Sistemas Operativos
- **T04** | Processos e threads
    - **Parte 1** | Processos
    - **Parte 2** | Threads
- **T05** | Escalonamento do processador
- **T06** | Sicronização de processos
    - **Parte 1** | Sincronização, semáforos
    - **Parte 2** | Problemas clássicos, monitorres, regiões críticas, mensagens
    - **T06.1** | Problema dos produtores/consumidores
- **T07** | Deadlocks
- **T08** | Gestão de memória
    - **Parte 1** | Compilação de programas, endereçamento real/virtual, partição fixa/dinâmica
    - **Parte 2** | Paginação, segmentação
- **T09** | Memória virtual
    - **Parte 1** | Introdução, paginação a pedido e performance, substituição de páginas
    - **Parte 2** | Algoritmos de substituição de páginas, alocação de frames, thrashing, segmentação a pedido
- **T10** | Sistema de ficheiros

📊 YouTube‑Spotify Data Pipeline

Este projeto, yt‑spotify‑pipeline, é um pipeline completo de dados que coleta, processa e disponibiliza informações de tendências do YouTube e métricas do Spotify. Ideal para praticar todas as etapas de um fluxo de dados real: ingestão, transformação, modelagem e visualização.

🚀 Visão Geral do Projeto

Coleta de Dados

Utiliza a API do Kaggle para baixar o dataset salvatorerastelli/spotify-and-youtube.

Script em Python (src/main.py) organiza arquivos em data/raw.

Limpeza e Preparação

Pandas para leitura, inspeção e tratamento:

Conversão de tipos (datas, números, texto).

Remoção de duplicatas e tratamento de valores faltantes.

Geração de colunas derivadas (ex.: duração em minutos).

Armazena versão tratada em data/clean (opcional).

Staging & Modelagem

Carrega base tratada no PostgreSQL (tabela stg_spotify_youtube).

Cria modelo estrela com tabelas:

Dimensões: dim_artist, dim_audio_feat, dim_plataform, dim_song.

Fato: fact_song_artist com métricas (views, likes, energy etc.) e song_id sequencial.

Scripts SQL organizados em sql/ para staging, dim_* e fact_*.

Visualização & Acompanhamento

Componente Notion Data Creators Command Center (30‑60‑90) para gestão de tarefas, KPIs e calendário de conteúdo.

Planejamento de posts no LinkedIn, publicações no GitHub e networking.

Versionamento & Deploy

Repositório GitHub: rodriguesgui/yt-spotify-pipeline

.gitignore configurado para ignorar ambiente virtual, dados brutos e caches.

Branch main com histórico de commits claros.

📂 Estrutura do Repositório

yt-spotify-pipeline/
├─ .gitignore
├─ README.md             # Este arquivo
├─ requirements.txt      # Dependências Python
├─ data/
│   ├─ raw/              # Dados brutos (.csv do Kaggle)
│   └─ clean/            # Dados tratados (opcional)
├─ src/
│   └─ main.py           # ETL Python
├─ sql/
│   ├─ 01_create_staging.sql
│   ├─ 02_dim_artist.sql
│   ├─ 03_dim_channel.sql
│   └─ 04_fact_streams.sql
└─ notion/               # Template 30‑60‑90 (Notion)  

🎯 Próximos Passos

Automatização: agendar o ETL via cron/Task Scheduler.

Power BI: criar relatórios conectados ao PostgreSQL.

Conteúdo: compartilhar aprendizados em posts diários no LinkedIn.

Monetização: explorar mini‑mentorias e cases.

Seja um Data Creator e leve seu pipeline ao próximo nível! 🚀
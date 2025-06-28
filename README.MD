#📊 YouTube‑Spotify Data Pipeline

Este projeto, yt‑spotify‑pipeline, é um pipeline completo de dados que coleta, processa e disponibiliza informações de tendências do YouTube e métricas do Spotify. Ideal para praticar todas as etapas de um fluxo de dados real: ingestão, transformação, modelagem e visualização.

--

## 🚀 Visão Geral do Projeto

- Coleta de Dados
- Utiliza a API do Kaggle para baixar o dataset salvatorerastelli/spotify-and-youtube.
- Script em Python (src/main.py) organiza arquivos em data/raw.
- Limpeza e Preparação
- Staging & Modelagem
- Carrega base tratada no PostgreSQL (tabela stg_spotify_youtube).
- Dimensões: dim_artist, dim_audio_feat, dim_plataform, dim_song.
- Versionamento & Deploy

---

## 📂 Estrutura do Repositório

```
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
```

---
🎯 Próximos Passos

Automatização: agendar o ETL via cron/Task Scheduler.

Power BI: criar relatórios conectados ao PostgreSQL.

Conteúdo: compartilhar aprendizados em posts diários no LinkedIn.

CREATE TABLE VERBALE (
    idverbale INT IDENTITY PRIMARY KEY,
    DataViolazione DATE NOT NULL,
    IndirizzoViolazione NVARCHAR(100) NOT NULL,
    Nominativo_Agente NVARCHAR(100) NOT NULL,
    DataTrascrizioneVerbale DATE NOT NULL,
    Importo MONEY NOT NULL,
    DecurtamentoPunti INT NOT NULL,
    idanagrafica INT NOT NULL,
    idviolazione INT NOT NULL,
    CONSTRAINT fk_anagrafica FOREIGN KEY (idanagrafica) REFERENCES ANAGRAFICA(IDanagrafica),
    CONSTRAINT fk_tipo_violazione FOREIGN KEY (idviolazione) REFERENCES TIPO_VIOLAZIONE(IDviolazione)
);

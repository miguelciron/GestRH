-- CreateTable
CREATE TABLE "Departamento" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,

    CONSTRAINT "Departamento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Funcao" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,

    CONSTRAINT "Funcao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Dependente" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "funcionarioId" INTEGER NOT NULL,

    CONSTRAINT "Dependente_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Funcionario" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "data_nascimento" TIMESTAMP(3) NOT NULL,
    "nacionalidade" TEXT NOT NULL,
    "estado_civil" TEXT NOT NULL,
    "naturalidade" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "contato" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "escolaridade" TEXT NOT NULL,
    "nome_pai" TEXT NOT NULL,
    "nome_mae" TEXT NOT NULL,
    "ctps" TEXT NOT NULL,
    "titulo_eleitor" TEXT NOT NULL,
    "reservista" BOOLEAN NOT NULL,
    "salario" DOUBLE PRECISION NOT NULL,
    "data_admissao" TIMESTAMP(3) NOT NULL,
    "numero_botina" INTEGER NOT NULL,
    "tamanho_camisa" TEXT NOT NULL,
    "vale_transporte" BOOLEAN NOT NULL,
    "medicamento_controlado" BOOLEAN NOT NULL,
    "departamentoId" INTEGER NOT NULL,
    "funcaoId" INTEGER NOT NULL,

    CONSTRAINT "Funcionario_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Dependente" ADD CONSTRAINT "Dependente_funcionarioId_fkey" FOREIGN KEY ("funcionarioId") REFERENCES "Funcionario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Funcionario" ADD CONSTRAINT "Funcionario_departamentoId_fkey" FOREIGN KEY ("departamentoId") REFERENCES "Departamento"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Funcionario" ADD CONSTRAINT "Funcionario_funcaoId_fkey" FOREIGN KEY ("funcaoId") REFERENCES "Funcao"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- Tabla para sincronizar reportes de guardia entre dispositivos
-- Ejecutar este SQL en el panel de Supabase (SQL Editor)

CREATE TABLE IF NOT EXISTS reportes_guardia (
  id BIGSERIAL PRIMARY KEY,
  reporte_id BIGINT NOT NULL,
  fecha TEXT,
  guardia TEXT,
  guardia_texto TEXT,
  enfermero TEXT,
  auxiliar TEXT,
  paciente TEXT,
  signos_vitales JSONB,
  mensaje_importante TEXT,
  observaciones TEXT,
  progreso JSONB,
  medicacion_detalle JSONB,
  tareas_detalle JSONB,
  rotaciones_realizadas JSONB,
  leido BOOLEAN DEFAULT false,
  fecha_envio TIMESTAMPTZ DEFAULT NOW(),
  datos_completos JSONB,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Índices para mejorar rendimiento
CREATE INDEX IF NOT EXISTS idx_reportes_fecha ON reportes_guardia(fecha_envio DESC);
CREATE INDEX IF NOT EXISTS idx_reportes_leido ON reportes_guardia(leido);
CREATE INDEX IF NOT EXISTS idx_reportes_reporte_id ON reportes_guardia(reporte_id);

-- Políticas RLS para permitir acceso público (sin autenticación)
ALTER TABLE reportes_guardia ENABLE ROW LEVEL SECURITY;

-- Política para permitir INSERT desde cualquier lugar
CREATE POLICY "Permitir insertar reportes" ON reportes_guardia
  FOR INSERT
  WITH CHECK (true);

-- Política para permitir SELECT desde cualquier lugar  
CREATE POLICY "Permitir leer reportes" ON reportes_guardia
  FOR SELECT
  USING (true);

-- Política para permitir UPDATE desde cualquier lugar
CREATE POLICY "Permitir actualizar reportes" ON reportes_guardia
  FOR UPDATE
  USING (true);

-- Política para permitir DELETE desde cualquier lugar
CREATE POLICY "Permitir eliminar reportes" ON reportes_guardia
  FOR DELETE
  USING (true);

-- Tabla para sincronizar el estado de la guardia entre dispositivos
-- Ejecutar este SQL en el panel de Supabase (SQL Editor)

CREATE TABLE IF NOT EXISTS estado_guardia (
  id SERIAL PRIMARY KEY,
  fecha DATE NOT NULL DEFAULT CURRENT_DATE,
  guardia_tipo VARCHAR(20) NOT NULL,
  enfermero VARCHAR(100),
  auxiliar VARCHAR(100),
  medicacion_completada JSONB DEFAULT '{}'::jsonb,
  tareas_completadas JSONB DEFAULT '{}'::jsonb,
  rotaciones_realizadas JSONB DEFAULT '[]'::jsonb,
  signos_vitales JSONB DEFAULT '{}'::jsonb,
  alarmas_activas BOOLEAN DEFAULT true,
  alarmas_pospuestas JSONB DEFAULT '{}'::jsonb,
  alarmas_disparadas JSONB DEFAULT '{}'::jsonb,
  ultima_actualizacion TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE(fecha, guardia_tipo)
);

-- Índice para búsquedas rápidas
CREATE INDEX IF NOT EXISTS idx_estado_guardia_fecha ON estado_guardia(fecha, guardia_tipo);

-- Habilitar RLS (Row Level Security)
ALTER TABLE estado_guardia ENABLE ROW LEVEL SECURITY;

-- Política para permitir acceso anónimo (la app no requiere login)
CREATE POLICY "Permitir acceso público al estado de guardia"
ON estado_guardia FOR ALL
TO anon
USING (true)
WITH CHECK (true);

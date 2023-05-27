import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';
@Entity('comprobante')
export class Comprobante {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'timestamp', default: () => 'CURRENT_TIMESTAMP' })
  fecha: Date;

  @Column({ nullable: false })
  id_remitente: number;

  @Column({ nullable: false })
  id_destinatario: number;

  @Column({ nullable: false, type: 'decimal', precision: 10, scale: 2 })
  tipo_cambio: number;

  @Column({ nullable: false, type: 'decimal', precision: 20, scale: 2 })
  tipo_montomm: number;

  @Column({ nullable: false, type: 'decimal', precision: 20, scale: 2 })
  tipo_montome: number;
}

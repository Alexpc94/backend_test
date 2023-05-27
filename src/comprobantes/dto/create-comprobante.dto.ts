export class ComprobantesPost {
  id?: number;
  fecha?: Date;
  id_remitente: number;
  id_destinatario: number;
  tipo_cambio: number;
  tipo_montomm: number;
  tipo_montome: number;
}

export class UsersPost {
  id?: number;
  nombre: string;
  apellidos: string;
  celular: string;
}

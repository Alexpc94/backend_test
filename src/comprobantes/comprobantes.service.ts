import { Injectable } from '@nestjs/common';
import { ComprobantesPost } from './dto/create-comprobante.dto';
import { InjectRepository } from '@nestjs/typeorm';
import {
  Repository,
  UpdateResult,
  DeleteResult,
  FindManyOptions,
} from 'typeorm';
import { from, Observable } from 'rxjs';

import { Comprobante } from './entities/comprobante.entity';

@Injectable()
export class ComprobantesService {
  constructor(
    @InjectRepository(Comprobante)
    private readonly comprobantePostRepository: Repository<Comprobante>,
  ) {}

  create(createComprobanteDto: ComprobantesPost): Observable<ComprobantesPost> {
    return from(this.comprobantePostRepository.save(createComprobanteDto));
  }

  findAll(): Observable<ComprobantesPost[]> {
    return from(this.comprobantePostRepository.find());
  }

  findOne(id: number): Observable<ComprobantesPost[]> {
    const options: FindManyOptions<Comprobante> = {
      where: { id },
    };
    return from(this.comprobantePostRepository.find(options));
  }

  update(
    id: number,
    createComprobanteDto: ComprobantesPost,
  ): Observable<UpdateResult> {
    return from(
      this.comprobantePostRepository.update(id, createComprobanteDto),
    );
  }

  remove(id: number): Observable<DeleteResult> {
    return from(this.comprobantePostRepository.delete(id));
  }
}

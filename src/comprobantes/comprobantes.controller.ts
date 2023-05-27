import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Delete,
  Put,
} from '@nestjs/common';
import { Observable } from 'rxjs';
import { ComprobantesService } from './comprobantes.service';
import { ComprobantesPost } from './dto/create-comprobante.dto';
import { ApiTags } from '@nestjs/swagger';
import { DeleteResult, UpdateResult } from 'typeorm';

@ApiTags('comprobantes')
@Controller('comprobantes')
export class ComprobantesController {
  constructor(private readonly comprobantesService: ComprobantesService) {}

  @Post()
  create(
    @Body() createComprobanteDto: ComprobantesPost,
  ): Observable<ComprobantesPost> {
    return this.comprobantesService.create(createComprobanteDto);
  }

  @Get()
  findAll(): Observable<ComprobantesPost[]> {
    return this.comprobantesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: number): Observable<ComprobantesPost[]> {
    return this.comprobantesService.findOne(id);
  }

  @Put(':id')
  update(
    @Param('id') id: number,
    @Body() createComprobanteDto: ComprobantesPost,
  ): Observable<UpdateResult> {
    return this.comprobantesService.update(+id, createComprobanteDto);
  }

  @Delete(':id')
  remove(@Param('id') id: number): Observable<DeleteResult> {
    return this.comprobantesService.remove(id);
  }
}

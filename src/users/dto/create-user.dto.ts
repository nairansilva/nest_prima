import { IsEmail, IsString, IsNotEmpty } from 'class-validator';

export class CreateUserDto {
  @IsEmail()
  @IsNotEmpty()
  email: string;

  @IsString()
  name: string;

  @IsString()
  admin: boolean;
}

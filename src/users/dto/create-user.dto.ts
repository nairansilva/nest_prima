import { IsEmail, IsString, IsNotEmpty, IsBoolean } from 'class-validator';

export class CreateUserDto {
  @IsEmail()
  @IsNotEmpty()
  email: string;

  @IsString()
  name: string;

  @IsBoolean()
  admin: boolean;
}

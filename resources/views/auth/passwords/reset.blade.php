@extends('layouts.app')

@section('content')
<div class="container contLogin">

              <div class="page-header page-headerLog">
                <h2 class="titleLogin">Reestablecer contraseña</h2>
              </div>
  <div class="">

                    <form method="POST" action="{{ route('password.request') }}">
                        {{ csrf_field() }}

                        <input type="hidden" name="token" value="{{ $token }}">

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <div class="form-group">
                            <label for="email" class="form-control">E-Mail</label>
                                <input id="email" type="email" class="form-control" name="email" value="{{ $email or old('email') }}" required autofocus>
                              </div>
                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif

                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                          <div class="form-group">
                            <label for="password" >Contraseña</label>
                                <input id="password" type="password" class="form-control" name="password" required>
                              </div>
                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif

                        </div>

                        <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
    <div class="form-group">
                            <label for="password-confirm" >Confirmar contraseña</label>

                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
  </div>
                                @if ($errors->has('password_confirmation'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password_confirmation') }}</strong>
                                    </span>
                                @endif

                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-lg btn-primary btn-block submitLog">
                                    Reestrablecer Contraseña
                                </button>
                            </div>
                        </div>
                    </form>


        </div>
</div>
@endsection

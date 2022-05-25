import Bg from '../../assets/images/bg-login.jpg'
import Lock from '../../assets/icons/lock.svg'
import Aroba from '../../assets/icons/aroba.svg'

const SignUp = () => {
  return (
    <div>
      <div className="relative min-h-screen  grid bg-black ">
        <div className="flex flex-col sm:flex-row items-center md:items-start sm:justify-center md:justify-start flex-auto min-w-0 ">
          <div
            className="sm:w-1/2 xl:w-3/5 bg-gradient-to-r from-violet-500 to-fuchsia-500 h-full hidden md:flex flex-auto items-center justify-center p-10 overflow-hidden  text-white bg-no-repeat bg-cover relative">
            <div className="absolute bg-black opacity-25 inset-0 z-0">
              <img className="min-h-screen" src={Bg} alt="bg" />
            </div>
            <div className="w-full lg:max-w-2xl md:max-w-md z-10 items-center text-center ">
              <div className="flex flex-col sm:flex-row items-center md:items-start sm:justify-center md:justify-start flex-auto min-w-0 bg-transparent blur">
                <div className="font-bold leading-tight mb-6 mx-auto w-full content-center items-center ">
                  <h1 className="text-9xl text-white font-bold leading-tight mb-6 mx-auto w-full content-center items-center ">
                    Art Kastle
                  </h1>
                </div>
              </div>
            </div>
          </div>
          <div
            className="md:flex md:items-center md:justify-left w-full sm:w-auto md:h-full xl:w-1/2 p-8  md:p-10 lg:p-14 sm:rounded-lg md:rounded-none "
          >
            <div className="max-w-xl w-full space-y-12">
              <div className="lg:text-left text-center">
                <h2 className="mt-6 text-7xl font-bold text-gray-100 text-uppercase">
                  CREAR CUENTA
                </h2>
                <p className="mt-10 text-4xl text-gray-200">Registra tu cuenta ahora!</p>
              </div>
              <div className="flex flex-row justify-center items-center space-x-3"></div>

              <form className="">
                <div className="flex items-center border-2 py-2 px-3 rounded-2xl mb-4">
                  <img src={Aroba} alt="lock" className="w-6 h-6" />
                  <input className="pl-2 outline-none border-none w-full bg-transparent text-white " type="text" name="" id="" placeholder="Correo electronico" />
                </div>
                <div className="flex items-center border-2 py-2 px-3 rounded-2xl mb-4">
                  <img src={Lock} alt="lock" />
                  <input className="pl-2 outline-none w-full border-none bg-transparent text-white" type="text" name="" id="" placeholder="Contraseña" />
                </div>
                <div className="flex items-center border-2 py-2 px-3 rounded-2xl mb-4">
                  <img src={Lock} alt="lock" />
                  <input className="pl-2 outline-none w-full border-none bg-transparent text-white" type="text" name="" id="" placeholder="Confirmar Contraseña" />
                </div>
                  <div className="flex flex-col">
                  <span className="text-sm ml-2 text-white hover:text-blue-500 cursor-pointer">Olvidaste tu contraseña?</span>
                  <span className="text-sm mt-1 ml-2 text-white hover:text-blue-500 cursor-pointer">Iniciar Sesión</span>
                  <span className="text-sm mt-1 ml-2 text-white hover:text-blue-500 cursor-pointer">Volver</span>
                </div>
                <div className="flex items-center justify-center mt-10">
                  <button type="submit" className="block w-6/12 bg-gradient-to-r from-purple-500 to-pink-500 mt-4 py-2 rounded-2xl text-white font-semibold mb-2 hover:text-gray-200 hover:bg-gradient-to-r hover:from-purple-600 hover:to-pink-600 active:bg-gradient-to-r active:from-pink-500 active:to-purple-500 active:transition-all">Crear</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default SignUp
#include "Sounds\Server.h"
#include <assert.h>
#include "fmod\lowlevel\fmod.hpp"

namespace Sounds{

	// Única instancia del servidor
	CServer *CServer::_instance = nullptr;
	std::string CServer::_soundPath = "media/sounds/";

	CServer::CServer() : _fmod_studio_system(nullptr)
	{

		_instance = this;

		// Creamos el objeto del Studio System
		FMOD_RESULT result = FMOD::Studio::System::create(&_fmod_studio_system);

		assert(result == FMOD_OK && "No se ha creado el objeto Studio System correctamente");

		// Inicializamos FMOD studio.
		// esto tambien inicializa FMOD low-level
		result = _fmod_studio_system->initialize(512, FMOD_STUDIO_INIT_NORMAL, FMOD_INIT_NORMAL, 0);

		assert(result == FMOD_OK && "No se ha inicializado el objeto Studio System correctamente");

		// Obtenemos el sistema de bajo nivel
		_fmod_studio_system->getLowLevelSystem(&_fmod_lowLevel_system);

		// Inicializamos el manejador de sonidos y de canales
		_sounds = new Sounds::CSound();
		_channels = new Sounds::CChannel();
		_banks = new Sounds::CBank();
		_events = new Sounds::CEvent();

	}

	CServer::~CServer()
	{
		// Liberamos fmod
		FMOD_RESULT result = _fmod_studio_system->release();
		assert(result == FMOD_OK && "FMOD no se ha liberado correctamente");
		_fmod_studio_system = nullptr;
		_fmod_lowLevel_system = nullptr;

		// Liberamos las estructuras de datos
		delete _sounds;
		delete _channels;
		_sounds = nullptr;
		_channels = nullptr;

		// Reseteamos la instancia de la clase
		assert(_instance);
		_instance = nullptr;
	}

	bool CServer::Init()
	{
		assert(!_instance && "Segunda inicialización de Sounds::CServer no permitida!");

		if (!_instance){
			new CServer();
		}
		return true;
	}

	void CServer::Release()
	{
		
		if (_instance){
			delete _instance;
			_instance = nullptr;
		}

	}

	bool CServer::tick(unsigned int msecs)
	{
		
		// LLamamos al tick del Studio System
		_fmod_studio_system->update();

		return true;
	}

};

#ifndef LOGIC_GAME_OBJECT_H
#define LOGIC_GAME_OBJECT_H

#include "Logic\Entity\Entity.h"
#include "Logic\Entity\Component.h"
#include "Logic\Maps\Map.h"

namespace Logic
{

	class CGameObject
	{
	public:

		CGameObject(TEntityID gameObjectID);

		~CGameObject();

		bool spawn(CMap *map, const Map::CEntity *entityInfo);

		CEntity* getBody() const;

		CEntity* getShadow() const;

		void setBody(CEntity* body);

		void setShadow(CEntity* shadow);

		bool activate();

		void deactivate();

		bool isActivated();

		void tick(unsigned int msecs);

		void addComponent(IComponent* component);

		bool removeComponent(IComponent* component);

		void destroyAllComponents();

		bool emitMessage(const TMessage &message, IComponent* emitter = 0);

		/**
		M�todo que indica si el game object es o no el jugador.
		Seguro que hay formas mejores desde el punto de vista de
		dise�o de hacerlo, pero esta es la m�s r�pida: la entidad
		con la descripci�n de la entidad tiene esta descripci�n que
		establece en el spawn().

		@return true si la entidad es el jugador.
		*/
		bool isPlayer() { return _isPlayer; }

		/**
		Devuelve el identificador �nico del game object.

		@return Identificador.
		*/
		Logic::TEntityID getGameObjectID() const;

		/**
		Devuelve el mapa donde est� el game object.

		@return Puntero al mapa que contiene el game object.
		*/
		CMap *getMap();

		/**
		Devuelve el nombre del game object.

		@return Nombre del game object.
		*/
		const std::string &getName() const;

		/**
		Devuelve el blueprint del game object. Este atributo es leido de
		la entidad del mapa en spawn().

		@return Blueprint del game object.
		*/
		const std::string &getBlueprint() const;

	protected:

		/**
		Clase amiga que puede modificar los atributos (en concreto se
		usa para modificar el mapa.
		*/
		friend class CMap;

		CEntity* _body;
		CEntity* _shadow;

		bool _activated;

		/**
		Identificador �nico del game object.
		*/
		Logic::TEntityID _gameObjectID;

		/**
		Tipo para la lista de componetes.
		*/
		typedef std::list<IComponent*> TComponentList;

		/**
		Lista de los componentes del game object.
		*/
		TComponentList _components;

		/**
		Tipo del game object declarado en el archivo blueprints.
		*/
		std::string _blueprint;

		/**
		Nombre del game object.
		*/
		std::string _name;

		/**
		Mapa l�gico donde est� el game object.
		*/
		Logic::CMap *_map;

		/**
		Atributo que indica si lael game object es el jugador; por defecto
		es false a no ser que se lea otra cosa de los atributos.
		*/
		bool _isPlayer;

	}; // class CGameObject

} // namespace Logic

#endif // LOGIC_GAME_OBJECT_H
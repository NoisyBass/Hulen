#ifndef __Logic_Spike_H
#define __Logic_Spike_H

#include "Logic/Entity/Component.h"

namespace Logic 
{

	class CSpike : public IComponent
	{
		DEC_FACTORY(CSpike);
	public:

		/**
		Constructor por defecto; inicializa los atributos a su valor por 
		defecto.
		*/
		CSpike() : IComponent(){}

		
		virtual ~CSpike();
		
		
		virtual bool spawn(const std::string& name, CEntity* entity, CMap *map, const Map::CEntity *entityInfo);

		
		virtual bool accept(const TMessage &message);

		
		virtual void process(const TMessage &message);

	protected:

		

	}; // class CSpike

	REG_FACTORY(CSpike);

} // namespace Logic

#endif // __Logic_Spike_H

#include "MapEntity.h"

#include <cassert>

namespace Map {
	
	typedef std::pair<std::string, std::string> TSSPar;

	void CEntity::setAttribute(const std::string &attr, const std::string &value)
	{
		TSSPar elem(attr,value);
		if(_attributes.count(attr))
			_attributes.erase(attr);
		_attributes.insert(elem);

	} // setAttribute

	//--------------------------------------------------------

	bool CEntity::hasAttribute(const std::string &attr) const
	{
		// Casos especiales
		if(!attr.compare("name"))
			return true;
		if(!attr.compare("blueprint"))
			return true;
		if (!attr.compare("type"))
			return true;
		if(_attributes.count(attr))
			return true;
		return false;

	} // hasAttribute

	//--------------------------------------------------------

	const std::string &CEntity::getStringAttribute(const std::string &attr) const
	{
		// Casos especiales
		if(!attr.compare("name"))
			return _name;
		if(!attr.compare("blueprint"))
			return _blueprint;
		if (!attr.compare("type"))
			return _type;
		return (*_attributes.find(attr)).second;

	} // getStringAttribute

	//--------------------------------------------------------

	int CEntity::getIntAttribute(const std::string &attr) const
	{
		return atoi((*_attributes.find(attr)).second.c_str());

	} // getIntAttribute

	//--------------------------------------------------------

	float CEntity::getFloatAttribute(const std::string &attr) const
	{
		return (float)atof((*_attributes.find(attr)).second.c_str());

	} // getFloatAttribute

	//--------------------------------------------------------

	double CEntity::getDoubleAttribute(const std::string &attr) const
	{
		return atof((*_attributes.find(attr)).second.c_str());

	} // getDoubleAttribute

	//--------------------------------------------------------

	bool CEntity::getBoolAttribute(const std::string &attr) const
	{
		if(!(*_attributes.find(attr)).second.compare("true"))
			return true;
		else if(!(*_attributes.find(attr)).second.compare("false"))
			return false;
		throw new std::exception("Leido archivo booleano que no es ni true ni false.");

	} // getBoolAttribute

	//--------------------------------------------------------

	const Vector3 CEntity::getVector3Attribute(const std::string &attr) const
	{
		// Recuperamos la cadena  "x y z"
		std::string position = (*_attributes.find(attr)).second;
		int space1 = position.find(' ');
		float x = (float)atof(position.substr(0,space1).c_str());
		int space2 = position.find(' ',space1+1);
		float y = (float)atof(position.substr(space1+1,space2-(space1+1)).c_str());
		float z = (float)atof(position.substr(space2+1,position.size()-(space2+1)).c_str());

		return Vector3(x,y,z);

	} // getVector3Attribute

	const std::pair<std::string, float> CEntity::getPairStringFloat(const std::string &attr) const
	{
		// Recuperamos el par
		std::string position = (*_attributes.find(attr)).second;
		int space1 = position.find(' ');
		std::string string = position.substr(0, space1);
		float f = (float)atof(position.substr(space1 + 1, position.size() - (space1 + 1)).c_str());

		return std::pair<std::string, float>(string, f);
	} // getPairStringFloat

	void CEntity::copyAttributes(const CEntity *entity)
	{
		if (entity->_type != "")
			_type = entity->_type;
		if (entity->_blueprint != "")
			_blueprint = entity->_blueprint;

		for (auto attribute : entity->_attributes){
			// Conseguimos que al copiar los atributos, si es una entidad
			// No se copie el game_object al que apunta el prefab, y nos
			// quedamos con lo que habia puesto sin sobreescribirlo.
			if (attribute.first != "game_object")
				this->setAttribute(attribute.first, attribute.second);
		}
	}

} // namespace Map

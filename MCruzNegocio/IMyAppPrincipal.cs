using System;

namespace MCruzNegocio
{
	/// <summary>
	/// Interface para implementar en las Clases que manejen IPrincipal.
	/// </summary>
	public interface IMyAppPrincipal
	{
		bool IsPageEnabled(string pageName);
        //		bool IsActionEnabled(string actionName);

        bool IsActionEnabled(string accionname);
        
        string Perfil
		{
			get;
			set;
		}
	}
}

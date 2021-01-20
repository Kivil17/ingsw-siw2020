package ObjectDao;

import java.util.List;

import Object.Ombrellone;

public interface OmbrelloneDao {

	public void save(Ombrellone ombrellone);
	public Ombrellone findByPrimaryKey(int id);
	public void update(Ombrellone ombrellone);
	public void delete(Ombrellone ombrellone);
	public int sizeOmbrelloni();  //restituire numero di ombrelloni che sono stati prenotati con quell id
}

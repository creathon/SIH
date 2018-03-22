package com.creathon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.Films;
import com.creathon.dao.FilmsDao;
import com.creathon.service.FilmsService;

@Service
public class FilmsServiceImpl implements FilmsService{

	@Autowired
	FilmsDao filmsDao;
	
	@Override
	public Boolean saveOrUpdate(Films film) {
		// TODO Auto-generated method stub
		return filmsDao.saveOrUpdate(film);
	}

	@Override
	public List<Films> findAllByProductionHouseId(Integer productionHouseId) {
		// TODO Auto-generated method stub
		return filmsDao.findAllByProductionHouseId(productionHouseId);
	}

	@Override
	public Integer deleteFilm(Integer filmId) {
		// TODO Auto-generated method stub
		return filmsDao.deleteFilm(filmId);
	}

	@Override
	public Films findByFilmId(Integer filmId) {
		// TODO Auto-generated method stub
		return filmsDao.findByFilmId(filmId);
	}

	@Override
	public Long getFilmCount() {
		// TODO Auto-generated method stub
		return filmsDao.getFilmCount();
	}

}

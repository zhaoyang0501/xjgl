
package com.pzy.service;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.Course;
import com.pzy.entity.User;
import com.pzy.repository.CourseRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class CourseService {
     @Autowired
     private CourseRepository courseRepository;

 	public List<Course> findTop3() {
 		return courseRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
     public List<Course> findAll() {
         return (List<Course>) courseRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Course> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Course> spec = new Specification<Course>() {
              public Predicate toPredicate(Root<Course> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("name").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Course> result = (Page<Course>) courseRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Course> findAll(final int pageNumber, final int pageSize,final User user ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Course> spec = new Specification<Course>() {
              public Predicate toPredicate(Root<Course> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (user != null) {
                  predicate.getExpressions().add(cb.equal(root.get("user").as(User.class),user));
               }
              return predicate;
              }
         };
         Page<Course> result = (Page<Course>) courseRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			courseRepository.delete(id);
		}
		public Course find(Long id){
			  return courseRepository.findOne(id);
		}
		public void save(Course course){
			courseRepository.save(course);
		}
}
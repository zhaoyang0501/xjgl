package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import com.pzy.entity.Course;
public interface CourseRepository extends PagingAndSortingRepository<Course, Long>,JpaSpecificationExecutor<Course>{
}


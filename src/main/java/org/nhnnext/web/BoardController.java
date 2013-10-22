package org.nhnnext.web;

import org.nhnnext.repository.BoardRepository;
import org.nhnnext.support.FileUploader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class BoardController {
	@Autowired
	private BoardRepository boardRepository;
	
	@RequestMapping("/board")
	public String list(Model model) {
		model.addAttribute("boards", boardRepository.findAll());
		return "list";
	}
	
	@RequestMapping("/board/form")
	public String form() {
		return "form";
	}
	
	@RequestMapping(value="/board", method=RequestMethod.POST)
	public String create(Board board, MultipartFile file) {
		String FileName = FileUploader.upload(file);
		board.setImagename(FileName);
		Board savedBoard = boardRepository.save(board);
		return "redirect:/board/" + savedBoard.getId();
	}
	
	@RequestMapping("/board/{id}")
	public String show(@PathVariable Long id, Model model) {
		Board foundBoard = boardRepository.findOne(id);
		model.addAttribute("board", foundBoard);
		model.addAttribute("comments", foundBoard.getComments());
		return "show";
	}
}

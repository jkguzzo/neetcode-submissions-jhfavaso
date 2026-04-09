class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:
        # make sure each row is valid
        for i in range(9):
            seen = set()
            for j in range(9):
                if board[i][j] != '.':  # skip empty cells
                    if board[i][j] in seen:
                        return False
                    seen.add(board[i][j])
        
        # Check columns
        for j in range(9):
            seen = set()
            for i in range(9):
                if board[i][j] != '.':  # skip empty cells
                    if board[i][j] in seen:
                        return False
                    seen.add(board[i][j])
        
        # Check 3x3 boxes
        for box_row in range(3):
            for box_col in range(3):
                seen = set()
                # iterate over cells inside the box
                for i in range(box_row * 3, box_row * 3 + 3):
                    for j in range(box_col * 3, box_col * 3 + 3):
                        if board[i][j] != '.':  # skip empty cells
                            if board[i][j] in seen:
                                return False
                            seen.add(board[i][j])
        
        # If we never find duplicates, the board is valid
        return True

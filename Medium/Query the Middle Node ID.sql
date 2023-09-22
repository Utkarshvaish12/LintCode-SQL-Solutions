select id 
from TreeNode
where parent!=-1 and id in (select parent from TreeNode);
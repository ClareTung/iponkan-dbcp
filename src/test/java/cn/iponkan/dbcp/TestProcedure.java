package cn.iponkan.dbcp;

import cn.iponkan.dbcp.procedure.Order;
import cn.iponkan.dbcp.procedure.ProcedureReturnListExecutor;
import cn.iponkan.dbcp.procedure.ProcedureReturnParametersExecutor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Assert;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * @author dongtangqiang
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class TestProcedure {

  @Autowired
  private ProcedureReturnParametersExecutor procedure1;
  @Autowired
  private ProcedureReturnListExecutor procedure2;

  @Test
  public void test() {
    procedure1.save();
  }

  @Test
  public void testGetByUuid() {
    Order order = procedure1.getByUuid("d14f8eec-ec1a-11ea-98de-1234567");
    assertNotNull(order);
    assertEquals(order.getNumber(), "20200901000003");
  }

  @Test
  public void testGetAll() {
    List<Order> orderList = procedure2.getAll();
    assertEquals(3, orderList.size());
  }

}

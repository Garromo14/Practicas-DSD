/* calc.x - Especificacion de calculadora */

const MAX_TOKENS = 64;

enum token_type { TOKEN_NUM = 0, TOKEN_OP = 1 };

union token switch (token_type type) {
    case TOKEN_NUM: double num;
    case TOKEN_OP:  int    op;
};

typedef token expr<MAX_TOKENS>;

union calc_res switch (int errnum) {
    case 0:
        double res;
    default:
        void;
};

program CALCPROG {
    version CALCVER {
        calc_res CALCULADORA(expr) = 1;
    } = 1;
} = 0x20000001;

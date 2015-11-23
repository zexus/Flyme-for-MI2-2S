.class Lcom/android/settings/co;
.super Ljava/lang/Object;
.source "EqualizerView.java"


# instance fields
.field private kW:Lcom/android/settings/cp;

.field private kX:Lcom/android/settings/cp;

.field private kY:Lcom/android/settings/cp;

.field private kZ:Lcom/android/settings/cp;

.field private la:Lcom/android/settings/cp;

.field private lb:Lcom/android/settings/cp;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/settings/cp;)Lcom/android/settings/cp;
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p1, p1}, Lcom/android/settings/cp;->c(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/settings/co;->kW:Lcom/android/settings/cp;

    iget-object v2, p0, Lcom/android/settings/co;->kX:Lcom/android/settings/cp;

    invoke-virtual {v2, p1}, Lcom/android/settings/cp;->d(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/cp;->b(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/co;->kY:Lcom/android/settings/cp;

    invoke-virtual {v2, v0}, Lcom/android/settings/cp;->d(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/cp;->b(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/android/settings/co;->kZ:Lcom/android/settings/cp;

    iget-object v3, p0, Lcom/android/settings/co;->la:Lcom/android/settings/cp;

    invoke-virtual {v3, p1}, Lcom/android/settings/cp;->d(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/cp;->b(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/co;->lb:Lcom/android/settings/cp;

    invoke-virtual {v3, v0}, Lcom/android/settings/cp;->d(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/cp;->b(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v0

    .line 229
    invoke-virtual {v1, v0}, Lcom/android/settings/cp;->d(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v0

    return-object v0
.end method

.method protected a(FFFF)V
    .locals 18

    .prologue
    .line 213
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p1

    float-to-double v4, v0

    mul-double/2addr v2, v4

    move/from16 v0, p2

    float-to-double v4, v0

    div-double/2addr v2, v4

    .line 214
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const/high16 v6, 0x42200000    # 40.0f

    div-float v6, p3, v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v4

    add-double/2addr v8, v4

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v10, v10, p4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    .line 217
    new-instance v8, Lcom/android/settings/cp;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v4, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    mul-double/2addr v10, v4

    double-to-float v9, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/settings/cp;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/co;->kW:Lcom/android/settings/cp;

    .line 218
    new-instance v8, Lcom/android/settings/cp;

    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    mul-double/2addr v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v4, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v14, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    double-to-float v9, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/settings/cp;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/co;->kX:Lcom/android/settings/cp;

    .line 219
    new-instance v8, Lcom/android/settings/cp;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v4, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    mul-double/2addr v10, v4

    double-to-float v9, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/settings/cp;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/co;->kY:Lcom/android/settings/cp;

    .line 220
    new-instance v8, Lcom/android/settings/cp;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v4, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    double-to-float v9, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/settings/cp;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/co;->kZ:Lcom/android/settings/cp;

    .line 221
    new-instance v8, Lcom/android/settings/cp;

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v4, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v14, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    double-to-float v9, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/settings/cp;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/co;->la:Lcom/android/settings/cp;

    .line 222
    new-instance v8, Lcom/android/settings/cp;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v4, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    sub-double v2, v10, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v8, v2, v3}, Lcom/android/settings/cp;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/co;->lb:Lcom/android/settings/cp;

    .line 223
    return-void
.end method

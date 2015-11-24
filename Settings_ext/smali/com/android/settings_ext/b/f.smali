.class public Lcom/android/settings_ext/b/f;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private adt:Ljava/util/ArrayList;

.field private ft:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    .line 60
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settings_ext/b/f;->ft:Landroid/net/NetworkPolicyManager;

    .line 61
    return-void
.end method

.method private static d(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const-wide/16 v4, -0x1

    .line 146
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 147
    const/4 v2, -0x1

    .line 148
    const-string v3, "UTC"

    .line 149
    const/4 v12, 0x0

    .line 158
    :goto_0
    new-instance v0, Landroid/net/NetworkPolicy;

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 152
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 153
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 154
    iget-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move v12, v13

    .line 155
    goto :goto_0
.end method

.method private e(Ljava/lang/String;Z)Z
    .locals 20

    .prologue
    .line 300
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings_ext/b/f;->aP(Ljava/lang/String;)Z

    move-result v2

    .line 302
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v16

    .line 303
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v17

    .line 304
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 306
    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 308
    const/4 v2, 0x0

    .line 347
    :goto_0
    return v2

    .line 310
    :cond_0
    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    .line 312
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v4

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 316
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 317
    const/4 v2, 0x0

    goto :goto_0

    .line 318
    :cond_1
    if-nez v4, :cond_2

    move-object v15, v5

    .line 325
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    iget v4, v15, Landroid/net/NetworkPolicy;->cycleDay:I

    iget-object v5, v15, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    iget-wide v6, v15, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v8, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    iget-boolean v14, v15, Landroid/net/NetworkPolicy;->metered:Z

    iget-boolean v15, v15, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v2, 0x1

    goto :goto_0

    .line 320
    :cond_2
    if-nez v5, :cond_3

    move-object v15, v4

    .line 321
    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {v4, v5}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v2

    if-gez v2, :cond_4

    move-object v2, v4

    :goto_2
    move-object v15, v2

    goto :goto_1

    :cond_4
    move-object v2, v5

    goto :goto_2

    .line 332
    :cond_5
    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    .line 334
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 335
    if-nez v18, :cond_6

    .line 336
    const/4 v2, 0x0

    goto :goto_0

    .line 338
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v18

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v0, v18

    iget-boolean v14, v0, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, v18

    iget-boolean v15, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move-object/from16 v3, v16

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v18

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v0, v18

    iget-boolean v14, v0, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, v18

    iget-boolean v15, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move-object/from16 v3, v17

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 347
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static h(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 357
    if-nez p0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 358
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    new-instance v0, Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private qo()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 255
    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    invoke-direct {p0, v0, v2}, Lcom/android/settings_ext/b/f;->e(Ljava/lang/String;Z)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 261
    goto :goto_1

    .line 262
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    invoke-static {p1}, Lcom/android/settings_ext/b/f;->d(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    return-object v0
.end method

.method public a(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 169
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 170
    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 172
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ext/b/f;->qn()V

    .line 174
    return-void
.end method

.method public a(Landroid/net/NetworkTemplate;J)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 183
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 185
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ext/b/f;->qn()V

    .line 187
    return-void
.end method

.method public a(Landroid/net/NetworkTemplate;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 212
    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 215
    if-eqz p2, :cond_3

    .line 216
    if-nez v2, :cond_2

    .line 217
    invoke-static {p1}, Lcom/android/settings_ext/b/f;->d(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 218
    iput-boolean v1, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 219
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->inferred:Z

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 239
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ext/b/f;->h(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 241
    if-eqz v2, :cond_4

    .line 242
    iget-object v0, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ext/b/f;->qn()V

    .line 247
    :cond_1
    return-void

    .line 222
    :cond_2
    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v3, :cond_0

    .line 223
    iput-boolean v1, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 224
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move v0, v1

    .line 225
    goto :goto_0

    .line 229
    :cond_3
    if-eqz v2, :cond_0

    .line 231
    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v3, :cond_0

    .line 232
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 233
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move v0, v1

    .line 234
    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public a([Landroid/net/NetworkPolicy;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/b/f;->ft:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 105
    return-void
.end method

.method public aP(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 267
    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 270
    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 271
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    .line 281
    goto :goto_0

    :pswitch_0
    move v0, v1

    move v1, v4

    .line 275
    goto :goto_1

    :pswitch_1
    move v0, v4

    move v1, v3

    .line 277
    goto :goto_1

    .line 282
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v4

    :cond_2
    move v4, v2

    goto :goto_2

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 123
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/net/NetworkTemplate;J)V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 196
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 198
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ext/b/f;->qn()V

    .line 200
    return-void
.end method

.method public c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings_ext/b/f;->h(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Landroid/net/NetworkTemplate;)I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f(Landroid/net/NetworkTemplate;)J
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public g(Landroid/net/NetworkTemplate;)J
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public qn()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 94
    new-instance v1, Lcom/android/settings_ext/b/g;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/b/g;-><init>(Lcom/android/settings_ext/b/f;[Landroid/net/NetworkPolicy;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/b/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method

.method public read()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v8, -0x1

    .line 64
    iget-object v2, p0, Lcom/android/settings_ext/b/f;->ft:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 67
    iget-object v2, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 68
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 70
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 71
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    move v0, v1

    .line 74
    :cond_0
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 75
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    move v0, v1

    .line 79
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ext/b/f;->adt:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ext/b/f;->qo()Z

    move-result v1

    or-int/2addr v0, v1

    .line 88
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ext/b/f;->qn()V

    .line 89
    :cond_3
    return-void
.end method

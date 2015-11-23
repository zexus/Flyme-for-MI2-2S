.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "ComputingConcurrentHashMap.java"


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 74
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;ILcom/google/common/base/b;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->b(Ljava/lang/Object;I)Lcom/google/common/collect/R;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->c(Lcom/google/common/collect/R;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->n(Lcom/google/common/collect/R;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yb()V

    :goto_0
    return-object v0

    .line 92
    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/R;->xD()Lcom/google/common/collect/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ad;->wI()Z

    move-result v0

    if-nez v0, :cond_9

    .line 94
    :cond_2
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yc()V

    .line 99
    iget v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    add-int/lit8 v6, v0, -0x1

    .line 100
    iget-object v7, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 101
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 102
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/R;

    move-object v5, v0

    .line 104
    :goto_1
    if-eqz v5, :cond_c

    .line 105
    invoke-interface {v5}, Lcom/google/common/collect/R;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 106
    invoke-interface {v5}, Lcom/google/common/collect/R;->xF()I

    move-result v1

    if-ne v1, p2, :cond_6

    if-eqz v9, :cond_6

    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p1, v9}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    invoke-interface {v5}, Lcom/google/common/collect/R;->xD()Lcom/google/common/collect/ad;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Lcom/google/common/collect/ad;->wI()Z

    move-result v1

    if-eqz v1, :cond_3

    move v6, v3

    .line 133
    :goto_2
    if-eqz v6, :cond_b

    .line 134
    new-instance v1, Lcom/google/common/collect/i;

    invoke-direct {v1, p3}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/base/b;)V

    .line 136
    if-nez v5, :cond_7

    .line 137
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILcom/google/common/collect/R;)Lcom/google/common/collect/R;

    move-result-object v0

    .line 138
    invoke-interface {v0, v1}, Lcom/google/common/collect/R;->b(Lcom/google/common/collect/ad;)V

    .line 139
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yd()V

    .line 149
    if-eqz v6, :cond_8

    .line 151
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILcom/google/common/collect/R;Lcom/google/common/collect/i;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yb()V

    goto :goto_0

    .line 112
    :cond_3
    :try_start_4
    invoke-interface {v5}, Lcom/google/common/collect/R;->xD()Lcom/google/common/collect/ad;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/ad;->get()Ljava/lang/Object;

    move-result-object v1

    .line 113
    if-nez v1, :cond_4

    .line 114
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->aAz:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v9, p2, v1, v10}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 125
    :goto_4
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 127
    iput v6, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    move v6, v2

    .line 129
    goto :goto_2

    .line 115
    :cond_4
    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10}, Lcom/google/common/collect/MapMakerInternalMap;->xu()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10, v5}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/R;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 118
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->aAA:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v9, p2, v1, v10}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 145
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yd()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yb()V

    throw v0

    .line 120
    :cond_5
    :try_start_6
    invoke-virtual {p0, v5}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->o(Lcom/google/common/collect/R;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 145
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yd()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yb()V

    move-object v0, v1

    goto/16 :goto_0

    .line 104
    :cond_6
    :try_start_8
    invoke-interface {v5}, Lcom/google/common/collect/R;->xE()Lcom/google/common/collect/R;

    move-result-object v5

    goto/16 :goto_1

    .line 141
    :cond_7
    invoke-interface {v5, v1}, Lcom/google/common/collect/R;->b(Lcom/google/common/collect/ad;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v5

    goto :goto_3

    :cond_8
    move-object v1, v0

    .line 156
    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_5
    const-string v4, "Recursive computation"

    invoke-static {v0, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/Object;)V

    .line 158
    invoke-interface {v1}, Lcom/google/common/collect/R;->xD()Lcom/google/common/collect/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ad;->wJ()Ljava/lang/Object;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->n(Lcom/google/common/collect/R;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->yb()V

    goto/16 :goto_0

    :cond_a
    move v0, v3

    .line 156
    goto :goto_5

    :cond_b
    move-object v1, v4

    move-object v0, v5

    goto/16 :goto_3

    :cond_c
    move v6, v2

    goto/16 :goto_2
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/R;Lcom/google/common/collect/i;)Ljava/lang/Object;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 174
    const/4 v1, 0x0

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 181
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 182
    :try_start_1
    invoke-virtual {p4, p1, p2}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 184
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 185
    if-eqz v1, :cond_0

    .line 187
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->aAy:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    :cond_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 198
    :cond_1
    if-nez v1, :cond_2

    .line 199
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->b(Ljava/lang/Object;ILcom/google/common/collect/ad;)Z

    :cond_2
    return-object v1

    .line 184
    :catchall_0
    move-exception v0

    move-wide v2, v4

    :goto_0
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 195
    :catchall_1
    move-exception v0

    :goto_1
    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 198
    :cond_3
    if-nez v1, :cond_4

    .line 199
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->b(Ljava/lang/Object;ILcom/google/common/collect/ad;)Z

    :cond_4
    throw v0

    .line 195
    :catchall_2
    move-exception v0

    move-wide v2, v4

    goto :goto_1

    .line 184
    :catchall_3
    move-exception v0

    goto :goto_0
.end method

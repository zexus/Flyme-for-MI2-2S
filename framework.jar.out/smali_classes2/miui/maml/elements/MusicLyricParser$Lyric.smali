.class public Lmiui/maml/elements/MusicLyricParser$Lyric;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;,
        Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    }
.end annotation


# instance fields
.field private final EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

.field private mIsModified:Z

.field private mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method public constructor <init>(Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p1, "header"    # Lmiui/maml/elements/MusicLyricParser$LyricHeader;
    .param p3, "isModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/MusicLyricParser$LyricEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;-><init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    .line 102
    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    .line 103
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v0, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    iput v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    .line 104
    iput-object p2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 105
    iput-boolean p3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 106
    new-instance v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    const/4 v1, -0x1

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .line 107
    new-instance v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicLyricParser$Lyric;

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getTimeFromLyricShot(ID)J
    .locals 8
    .param p1, "line"    # I
    .param p2, "percent"    # D

    .prologue
    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .local v2, "time":J
    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 157
    .local v0, "maxLine":I
    if-lt p1, v0, :cond_0

    .line 158
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int v4, p1, v0

    mul-int/lit16 v4, v4, 0x1f40

    add-int/2addr v1, v4

    int-to-long v4, v1

    const-wide v6, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v6, p2

    double-to-long v6, v6

    add-long v2, v4, v6

    .line 163
    :goto_0
    return-wide v2

    .line 160
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    int-to-double v4, v1

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v6, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int v1, v6, v1

    int-to-double v6, v1

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    double-to-long v2, v4

    goto :goto_0
.end method


# virtual methods
.method public addOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    add-int/2addr v1, p1

    iput v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 113
    return-void
.end method

.method public correctLyric(Lmiui/maml/elements/MusicLyricParser$LyricShot;ID)V
    .locals 17
    .param p1, "lyricShot"    # Lmiui/maml/elements/MusicLyricParser$LyricShot;
    .param p2, "lineIndex"    # I
    .param p3, "percent"    # D

    .prologue
    .line 167
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v7

    .line 168
    .local v7, "maxLine":I
    if-ltz p2, :cond_0

    move/from16 v0, p2

    if-gt v0, v7, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-ltz v12, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-le v12, v7, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    move-object/from16 v0, p1

    iget-wide v14, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v4

    .line 174
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v8

    .line 175
    .local v8, "newTime":J
    const/4 v6, 0x1

    .line 176
    .local v6, "isOffsetDelay":Z
    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    move/from16 v0, p2

    if-gt v0, v12, :cond_2

    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    move-object/from16 v0, p1

    iget-wide v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    cmpl-double v12, p3, v12

    if-lez v12, :cond_3

    .line 178
    :cond_2
    const/4 v6, 0x0

    .line 180
    :cond_3
    if-nez v6, :cond_4

    cmp-long v12, v4, v8

    if-gtz v12, :cond_0

    .line 183
    :cond_4
    if-eqz v6, :cond_5

    cmp-long v12, v4, v8

    if-ltz v12, :cond_0

    .line 187
    :cond_5
    sub-long v10, v4, v8

    .line 188
    .local v10, "offset":J
    long-to-int v12, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/maml/elements/MusicLyricParser$Lyric;->addOffset(I)V

    goto :goto_0
.end method

.method public decorate()V
    .locals 5

    .prologue
    .line 240
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    :cond_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 245
    .local v0, "el":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/MusicLyricParser$LyricEntity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 246
    .local v3, "len":I
    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->isDecorated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 251
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .line 252
    .local v1, "entity":Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    invoke-virtual {v1}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->decorate()V

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAfterLines(J)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 381
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getAfterLines(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 377
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getBeforeLines(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastLine(J)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 385
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLastLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine(J)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 373
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLyricContent(I)Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "entity":Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    if-gez p1, :cond_0

    .line 194
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .line 201
    :goto_0
    return-object v0

    .line 195
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 196
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entity":Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    check-cast v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .restart local v0    # "entity":Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    goto :goto_0
.end method

.method public getLyricShot(J)Lmiui/maml/elements/MusicLyricParser$LyricShot;
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 128
    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, v8, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 130
    .local v1, "offset":I
    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v8, v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v8, v1

    int-to-long v8, v8

    cmp-long v8, v8, p1

    if-lez v8, :cond_0

    .line 131
    new-instance v8, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 151
    :goto_0
    return-object v8

    .line 134
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 135
    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v8, v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int v7, v8, v1

    .line 136
    .local v7, "timeThis":I
    int-to-long v8, v7

    cmp-long v8, v8, p1

    if-lez v8, :cond_2

    .line 137
    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v8, v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int v6, v8, v1

    .line 138
    .local v6, "timePrev":I
    const-wide/16 v2, 0x0

    .line 139
    .local v2, "percent":D
    if-le v7, v6, :cond_1

    .line 140
    int-to-long v8, v6

    sub-long v8, p1, v8

    long-to-double v8, v8

    sub-int v10, v7, v6

    int-to-double v10, v10

    div-double v2, v8, v10

    .line 142
    :cond_1
    new-instance v8, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    add-int/lit8 v9, v0, -0x1

    invoke-direct {v8, v9, v2, v3}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    goto :goto_0

    .line 134
    .end local v2    # "percent":D
    .end local v6    # "timePrev":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v7    # "timeThis":I
    :cond_3
    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v8, v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v8, v1

    int-to-long v4, v8

    .line 146
    .local v4, "timeLast":J
    sub-long v8, p1, v4

    const-wide/16 v10, 0x1f40

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 147
    sub-long v8, p1, v4

    long-to-double v8, v8

    const-wide v10, 0x40bf400000000000L    # 8000.0

    div-double v2, v8, v10

    .line 148
    .restart local v2    # "percent":D
    new-instance v8, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9, v2, v3}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    goto :goto_0

    .line 151
    .end local v2    # "percent":D
    :cond_4
    new-instance v8, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    iget-object v9, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    goto :goto_0
.end method

.method public getNextLine(J)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 389
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getNextLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenTime()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    return-wide v0
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    const/4 v2, 0x0

    .line 220
    :cond_0
    return-object v2

    .line 213
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v2, "lyricArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .line 217
    .local v3, "lyricEntity":Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    iget-object v1, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 218
    .local v1, "lyric":Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getTimeArr()[I
    .locals 7

    .prologue
    .line 224
    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    const/4 v4, 0x0

    .line 232
    :cond_0
    return-object v4

    .line 227
    :cond_1
    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 228
    .local v4, "timeArr":[I
    const/4 v0, 0x0

    .line 229
    .local v0, "i":I
    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .line 230
    .local v3, "lyricEntity":Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget v5, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget-object v6, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v6, v6, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    add-int/2addr v5, v6

    aput v5, v4, v0

    move v0, v1

    .line 231
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    return v0
.end method

.method public recycleContent()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 237
    return-void
.end method

.method public resetHeaderOffset()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    iput v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 117
    return-void
.end method

.method public set([ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "time"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "lyric":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->set([ILjava/util/ArrayList;)V

    .line 370
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.class Lmiui/maml/elements/MusicControlScreenElement$1;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClientChanged:Z

.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 3
    .param p1, "clearing"    # Z

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    .line 383
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicControlScreenElement;->readPackageName()V

    .line 384
    const-string v1, "MusicControlScreenElement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientChange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$1900(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$1900(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " clearing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz p1, :cond_0

    .line 388
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->resetAll()V
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 390
    :cond_0
    return-void

    .line 384
    :cond_1
    const-string v0, "null"

    goto :goto_0

    :cond_2
    const-string v0, "null"

    goto :goto_1
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 393
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 22
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    # setter for: Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$902(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/RemoteController$MetadataEditor;)Landroid/media/RemoteController$MetadataEditor;

    .line 326
    const/4 v5, 0x0

    .line 328
    .local v5, "anotherSong":Z
    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 329
    .local v18, "title":Ljava/lang/String;
    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "artist":Ljava/lang/String;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "album":Ljava/lang/String;
    const-string v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\ntitle: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", artist: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", album: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-nez v18, :cond_0

    if-nez v6, :cond_0

    if-eqz v4, :cond_1

    .line 333
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
    invoke-static/range {v19 .. v19}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v4}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v6, v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_1
    const/16 v19, 0x64

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 338
    .local v7, "artwork":Landroid/graphics/Bitmap;
    const-string v20, "MusicControlScreenElement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "artwork: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    if-nez v7, :cond_2

    if-eqz v5, :cond_b

    :cond_2
    const/4 v8, 0x1

    .line 340
    .local v8, "artworkInfoValid":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 343
    if-nez v7, :cond_c

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x1f4

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->delayToSetDefaultArtwork(J)V
    invoke-static/range {v19 .. v21}, Lmiui/maml/elements/MusicControlScreenElement;->access$1200(Lmiui/maml/elements/MusicControlScreenElement;J)V

    .line 350
    :cond_3
    :goto_2
    const/16 v19, 0x3e8

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 351
    .local v17, "raw":Ljava/lang/String;
    const-string v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "raw lyric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static/range {v17 .. v17}, Lmiui/maml/elements/MusicLyricParser;->parseLyric(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v9

    .line 353
    .local v9, "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    if-nez v9, :cond_4

    if-eqz v5, :cond_d

    :cond_4
    const/4 v12, 0x1

    .line 354
    .local v12, "lyricInfoValid":Z
    :goto_3
    if-eqz v12, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;
    invoke-static {v0, v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$1402(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    invoke-static {v0, v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$1500(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    .line 359
    :cond_5
    const/16 v19, 0x9

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v10

    .line 360
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;
    invoke-static/range {v19 .. v19}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lmiui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v14

    .line 361
    .local v14, "position":J
    const-string v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "duration: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-ltz v19, :cond_6

    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-gez v19, :cond_7

    :cond_6
    if-eqz v5, :cond_e

    :cond_7
    const/4 v13, 0x1

    .line 363
    .local v13, "progressInfoValid":Z
    :goto_4
    if-eqz v13, :cond_8

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateProgress(JJ)V
    invoke-static {v0, v10, v11, v14, v15}, Lmiui/maml/elements/MusicControlScreenElement;->access$1700(Lmiui/maml/elements/MusicControlScreenElement;JJ)V

    .line 367
    :cond_8
    const v19, 0x10000001

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/Rating;

    .line 368
    .local v16, "rating":Landroid/media/Rating;
    const-string v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "rating: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V
    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1800(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V

    .line 373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 374
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onClientChange(Z)V

    .line 376
    :cond_9
    return-void

    .line 338
    .end local v8    # "artworkInfoValid":Z
    .end local v9    # "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    .end local v10    # "duration":J
    .end local v12    # "lyricInfoValid":Z
    .end local v13    # "progressInfoValid":Z
    .end local v14    # "position":J
    .end local v16    # "rating":Landroid/media/Rating;
    .end local v17    # "raw":Ljava/lang/String;
    :cond_a
    const-string v19, "null"

    goto/16 :goto_0

    .line 339
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 346
    .restart local v8    # "artworkInfoValid":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$1300(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 353
    .restart local v9    # "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    .restart local v17    # "raw":Ljava/lang/String;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 362
    .restart local v10    # "duration":J
    .restart local v12    # "lyricInfoValid":Z
    .restart local v14    # "position":J
    :cond_e
    const/4 v13, 0x0

    goto :goto_4
.end method

.method public onClientNowPlayingContentChange()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 402
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    .line 299
    const-string v0, "MusicControlScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    .line 293
    const-string v0, "MusicControlScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateUpdate2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 10
    .param p1, "transportControlFlags"    # I

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    const-string v1, "MusicControlScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "transportControlFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_2

    move v0, v2

    .line 271
    .local v0, "supportUserRating":Z
    :goto_0
    if-nez v0, :cond_0

    .line 272
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 274
    :cond_0
    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_3

    and-int/lit8 v1, p1, 0x3c

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    # setter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z
    invoke-static {v8, v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$202(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 279
    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_4

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    # setter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z
    invoke-static {v8, v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$302(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 281
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_5

    and-int/lit16 v8, p1, 0x80

    if-nez v8, :cond_5

    :goto_3
    # setter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z
    invoke-static {v1, v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$402(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 283
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v1, v1, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-wide v2, v4

    :goto_4
    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 285
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$300(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-wide v2, v4

    :goto_5
    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 286
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$400(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_6
    invoke-virtual {v1, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 288
    :cond_1
    return-void

    .end local v0    # "supportUserRating":Z
    :cond_2
    move v0, v3

    .line 270
    goto :goto_0

    .restart local v0    # "supportUserRating":Z
    :cond_3
    move v1, v3

    .line 274
    goto :goto_1

    :cond_4
    move v1, v3

    .line 279
    goto :goto_2

    :cond_5
    move v2, v3

    .line 281
    goto :goto_3

    :cond_6
    move-wide v2, v6

    .line 284
    goto :goto_4

    :cond_7
    move-wide v2, v6

    .line 285
    goto :goto_5

    :cond_8
    move-wide v4, v6

    .line 286
    goto :goto_6
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 0
    .param p1, "playList"    # [J

    .prologue
    .line 396
    return-void
.end method

.method protected onStateUpdate(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "playing":Z
    const/4 v1, 0x0

    .line 305
    .local v1, "stateChange":Z
    packed-switch p1, :pswitch_data_0

    .line 318
    :goto_0
    if-eqz v1, :cond_0

    .line 319
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V
    invoke-static {v2, v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;Z)V

    .line 321
    :cond_0
    return-void

    .line 308
    :pswitch_0
    const/4 v0, 0x0

    .line 309
    const/4 v1, 0x1

    .line 310
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string v3, "state_stop"

    invoke-virtual {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :pswitch_1
    const/4 v0, 0x1

    .line 314
    const/4 v1, 0x1

    .line 315
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string v3, "state_play"

    invoke-virtual {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

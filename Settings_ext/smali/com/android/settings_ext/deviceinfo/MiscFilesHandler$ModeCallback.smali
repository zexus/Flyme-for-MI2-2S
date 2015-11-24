.class Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# instance fields
.field final synthetic RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

.field private RZ:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RZ:I

    .line 82
    return-void
.end method

.method private g(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_1

    move v0, v1

    .line 149
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 150
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->g(Ljava/io/File;)Z

    move-result v3

    .line 151
    if-nez v3, :cond_0

    .line 157
    :goto_1
    return v1

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 95
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 96
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 140
    :goto_0
    return v3

    .line 99
    :pswitch_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-virtual {v2}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    .line 101
    iget v4, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RZ:I

    if-le v2, v4, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked item counts do not match. checkedCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget v2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RZ:I

    if-lez v2, :cond_5

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    :goto_1
    iget v4, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RZ:I

    if-ge v0, v4, :cond_4

    .line 108
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_1
    sget-boolean v4, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v4, :cond_2

    .line 113
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->bk(I)Lcom/android/settings_ext/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v5}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->bk(I)Lcom/android/settings_ext/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$FileInfo;->xn:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    invoke-direct {p0, v4}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->g(Ljava/io/File;)Z

    .line 122
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v4}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->bk(I)Lcom/android/settings_ext/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->n(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RZ:I

    .line 128
    :cond_5
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 133
    :goto_4
    :pswitch_1
    iget v2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RZ:I

    if-ge v0, v2, :cond_6

    .line 134
    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 137
    :cond_6
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x7f10039c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 86
    const v1, 0x7f110002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    .line 168
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v2}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->b(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget-object v5, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v5}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 172
    const-wide/16 v2, 0x0

    .line 173
    if-lez v4, :cond_1

    move v0, v1

    .line 174
    :goto_0
    iget v4, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RZ:I

    if-ge v0, v4, :cond_1

    .line 175
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v4}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->bk(I)Lcom/android/settings_ext/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    add-long/2addr v2, v6

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->c(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;->RV:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-static {v2}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getDataSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

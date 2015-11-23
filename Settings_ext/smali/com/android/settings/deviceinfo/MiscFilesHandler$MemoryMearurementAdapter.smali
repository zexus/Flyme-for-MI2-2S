.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiscFilesHandler.java"


# instance fields
.field private RT:Ljava/util/ArrayList;

.field private RU:J

.field final synthetic RV:Lcom/android/settings/deviceinfo/MiscFilesHandler;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RV:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RU:J

    .line 193
    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 196
    invoke-static {p2, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    .line 205
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->Tv:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    .line 200
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    .line 202
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RU:J

    iget-wide v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RU:J

    goto :goto_0
.end method


# virtual methods
.method public bk(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSize()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RU:J

    return-wide v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->bk(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 223
    :cond_0
    const-wide/16 v0, 0x0

    .line 225
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->Tw:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 249
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RV:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->d(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    .line 252
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->bk(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v1

    .line 253
    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->xn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setFileName(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->aG(Ljava/lang/String;)V

    .line 255
    check-cast p3, Landroid/widget/ListView;

    .line 257
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->nT()Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    invoke-direct {v2, p0, p3, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 275
    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-object v0

    .line 249
    :cond_0
    check-cast p2, Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    move-object v0, p2

    goto :goto_0
.end method

.method public n(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 236
    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RT:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RU:J

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    iget-wide v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->RU:J

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 245
    return-void
.end method

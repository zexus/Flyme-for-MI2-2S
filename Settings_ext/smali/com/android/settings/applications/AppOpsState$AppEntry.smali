.class public Lcom/android/settings/applications/AppOpsState$AppEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# instance fields
.field private final CH:Lcom/android/settings/applications/AppOpsState;

.field private final Df:Landroid/content/pm/ApplicationInfo;

.field private final Dg:Ljava/io/File;

.field private final Dh:Landroid/util/SparseArray;

.field private final Di:Landroid/util/SparseArray;

.field private Dj:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dh:Landroid/util/SparseArray;

    .line 197
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Di:Landroid/util/SparseArray;

    .line 204
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->CH:Lcom/android/settings/applications/AppOpsState;

    .line 205
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Df:Landroid/content/pm/ApplicationInfo;

    .line 206
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dg:Ljava/io/File;

    .line 207
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dh:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Di:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    return-void
.end method

.method aa(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dj:Z

    if-nez v0, :cond_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dg:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dj:Z

    .line 262
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Df:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dj:Z

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Df:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Df:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public as(I)Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dh:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public at(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Di:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Df:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dg:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Df:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->CH:Lcom/android/settings/applications/AppOpsState;

    iget-object v1, v1, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 250
    :goto_0
    return-object v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dj:Z

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->CH:Lcom/android/settings/applications/AppOpsState;

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dj:Z

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dg:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Dj:Z

    .line 243
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->Df:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->CH:Lcom/android/settings/applications/AppOpsState;

    iget-object v1, v1, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/android/settings/hh;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private zw:Landroid/widget/AlphabetIndexer;

.field private final zx:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/settings/UserDictionarySettings;)V
    .locals 3

    .prologue
    .line 288
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 266
    new-instance v0, Lcom/android/settings/hi;

    invoke-direct {v0, p0}, Lcom/android/settings/hi;-><init>(Lcom/android/settings/hh;)V

    iput-object v0, p0, Lcom/android/settings/hh;->zx:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 290
    if-eqz p3, :cond_0

    .line 291
    const v0, 0x11070055

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    const-string v1, "word"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 296
    new-instance v2, Landroid/widget/AlphabetIndexer;

    invoke-direct {v2, p3, v1, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/settings/hh;->zw:Landroid/widget/AlphabetIndexer;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hh;->zx:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, v0}, Lcom/android/settings/hh;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 299
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/hh;->zw:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/hh;->zw:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/hh;->zw:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/hh;->zw:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/hh;->zw:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/hh;->zw:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

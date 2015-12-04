.class public Lcom/miui/fmradio/StationItemHelper;
.super Ljava/lang/Object;
.source "StationItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;,
        Lcom/miui/fmradio/StationItemHelper$Station;
    }
.end annotation


# static fields
.field private static mStationItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/fmradio/StationItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mStationListListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationListListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static addOrUpdateSingleStation(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const v4, 0x7f0a0020

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "inList":Z
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 232
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 235
    :cond_0
    const/4 v2, 0x0

    .line 236
    .local v2, "item":Lcom/miui/fmradio/StationItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 237
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    check-cast v2, Lcom/miui/fmradio/StationItem;

    .line 238
    .restart local v2    # "item":Lcom/miui/fmradio/StationItem;
    iget v3, v2, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, p1, :cond_3

    .line 239
    if-eqz p2, :cond_2

    iget-object v3, v2, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/miui/fmradio/StationItem;->type:I

    if-eq v3, p3, :cond_2

    .line 240
    :cond_1
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/StationItem;

    iput-object p2, v3, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    .line 241
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/StationItem;

    iput p3, v3, Lcom/miui/fmradio/StationItem;->type:I

    .line 242
    invoke-static {p0, p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->updateSingleStationInDataBase(Landroid/content/Context;ILjava/lang/String;I)V

    .line 244
    :cond_2
    const/4 v1, 0x1

    .line 236
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_4
    if-nez v1, :cond_6

    .line 248
    new-instance v2, Lcom/miui/fmradio/StationItem;

    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v2, p1, v3, p3}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;I)V

    .line 249
    .restart local v2    # "item":Lcom/miui/fmradio/StationItem;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 250
    :cond_5
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {p0, p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->addSingleStationInDataBase(Landroid/content/Context;ILjava/lang/String;I)V

    .line 253
    :cond_6
    if-eqz v2, :cond_7

    .line 254
    invoke-static {v2}, Lcom/miui/fmradio/StationItemHelper;->notifyStationListChange(Lcom/miui/fmradio/StationItem;)V

    .line 256
    :cond_7
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 257
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 258
    invoke-static {}, Lcom/miui/fmradio/StationItemHelper;->sortByFrequency()V

    .line 259
    return-void

    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    :cond_8
    move-object v3, p2

    .line 248
    goto :goto_1
.end method

.method private static addSingleStationInDataBase(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 262
    invoke-static {p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->createContentValues(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 263
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 264
    return-void
.end method

.method private static checkStationDivider(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v2, -0x1

    .line 114
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->hasSpecifiedStations(Landroid/content/Context;I)Z

    move-result v1

    .line 115
    .local v1, "has":Z
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->findSpecifiedStationsDivider(Landroid/content/Context;I)I

    move-result v0

    .line 116
    .local v0, "dividerIndex":I
    if-eqz v1, :cond_1

    .line 117
    if-ne v0, v2, :cond_0

    .line 118
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/fmradio/StationItem$StationitemDivider;

    const/4 v4, 0x0

    const-string v5, "divider"

    invoke-direct {v3, v4, v5, p1}, Lcom/miui/fmradio/StationItem$StationitemDivider;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-eq v0, v2, :cond_0

    .line 122
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clearNormalItems(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 163
    const-string v2, "type=0"

    .line 164
    .local v2, "where":Ljava/lang/String;
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/fmradio/StationItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/StationItem;

    .line 166
    .local v0, "item":Lcom/miui/fmradio/StationItem;
    iget v3, v0, Lcom/miui/fmradio/StationItem;->type:I

    if-nez v3, :cond_0

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 170
    .end local v0    # "item":Lcom/miui/fmradio/StationItem;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    invoke-static {v5}, Lcom/miui/fmradio/StationItemHelper;->notifyStationListChange(Lcom/miui/fmradio/StationItem;)V

    .line 172
    return-void
.end method

.method public static clearStationItems()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    .line 308
    return-void
.end method

.method private static createContentValues(ILjava/lang/String;I)Landroid/content/ContentValues;
    .locals 3
    .param p0, "freq"    # I
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 299
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "label"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "frequnecy"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    return-object v0
.end method

.method public static deleteSingleStation(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I

    .prologue
    .line 273
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 274
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 277
    :cond_0
    const/4 v1, 0x0

    .line 278
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 279
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    check-cast v1, Lcom/miui/fmradio/StationItem;

    .line 280
    .restart local v1    # "item":Lcom/miui/fmradio/StationItem;
    iget v3, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, p1, :cond_3

    .line 281
    iget v2, v1, Lcom/miui/fmradio/StationItem;->type:I

    .line 282
    .local v2, "type":I
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 283
    invoke-static {p0, v2}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 284
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->deleteSingleStationInDataBase(Landroid/content/Context;I)V

    .line 288
    .end local v2    # "type":I
    :cond_1
    if-eqz v1, :cond_2

    .line 289
    invoke-static {v1}, Lcom/miui/fmradio/StationItemHelper;->notifyStationListChange(Lcom/miui/fmradio/StationItem;)V

    .line 291
    :cond_2
    return-void

    .line 278
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static deleteSingleStationInDataBase(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I

    .prologue
    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequnecy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method public static findSpecifiedStationsDivider(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 101
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 102
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 105
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/StationItem;

    .line 106
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    instance-of v2, v1, Lcom/miui/fmradio/StationItem$StationitemDivider;

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v2, p1, :cond_1

    .line 110
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    :goto_1
    return v0

    .line 104
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/miui/fmradio/StationItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getCurrentFrequency(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v2, "com.miui.fmradio_preferences"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "pre_cur_freq"

    invoke-static {}, Lcom/miui/fmradio/Utils;->getDefaultFrequency()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, "freq":I
    invoke-static {v0}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    const-string v2, "Fm:FmStationItemHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current frequency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, reset it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget v0, Lcom/miui/fmradio/Utils;->DEFAULT_FREQ:I

    .line 134
    :cond_0
    return v0
.end method

.method public static getNormalStationItemCount(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 218
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 221
    .local v0, "count":I
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/fmradio/StationItem;

    .line 222
    .local v2, "item":Lcom/miui/fmradio/StationItem;
    iget v3, v2, Lcom/miui/fmradio/StationItem;->type:I

    if-nez v3, :cond_1

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    :cond_2
    return v0
.end method

.method public static getStationItem(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pos"    # I

    .prologue
    .line 190
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 191
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 193
    :cond_0
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/StationItem;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I

    .prologue
    .line 197
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 198
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 200
    :cond_0
    const/4 v2, 0x0

    .line 201
    .local v2, "result":Lcom/miui/fmradio/StationItem;
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/StationItem;

    .line 202
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    iget v3, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, p1, :cond_1

    .line 203
    move-object v2, v1

    goto :goto_0

    .line 206
    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    :cond_2
    return-object v2
.end method

.method public static getStationItemCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 211
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 213
    :cond_0
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static hasSpecifiedStations(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "has":Z
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 89
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 91
    :cond_0
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/fmradio/StationItem;

    .line 92
    .local v2, "item":Lcom/miui/fmradio/StationItem;
    instance-of v3, v2, Lcom/miui/fmradio/StationItem$StationitemDivider;

    if-nez v3, :cond_1

    iget v3, v2, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v3, p1, :cond_1

    .line 93
    const/4 v0, 0x1

    .line 97
    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    :cond_2
    return v0
.end method

.method private static notifyStationListChange(Lcom/miui/fmradio/StationItem;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 72
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationListListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    .line 73
    .local v1, "l":Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;
    invoke-interface {v1, p0}, Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;->onStationItemChanged(Lcom/miui/fmradio/StationItem;)V

    goto :goto_0

    .line 75
    .end local v1    # "l":Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;
    :cond_0
    return-void
.end method

.method public static registerStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V
    .locals 1
    .param p0, "l"    # Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    .prologue
    .line 64
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationListListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method private static reloadItems(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 138
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/StationItemHelper$Station;->COLUMNS:[Ljava/lang/String;

    const-string v5, "type DESC, frequnecy"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    const-string v0, "label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "label":Ljava/lang/String;
    const-string v0, "frequnecy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 149
    .local v7, "freq":I
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 150
    .local v9, "type":I
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/fmradio/StationItem;

    invoke-direct {v1, v7, v8, v9}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 153
    .end local v7    # "freq":I
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "type":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 153
    :cond_2
    if-eqz v6, :cond_3

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 158
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 159
    invoke-static {}, Lcom/miui/fmradio/StationItemHelper;->sortByFrequency()V

    .line 160
    return-void
.end method

.method public static setCurrentFrequency(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I

    .prologue
    .line 78
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "com.miui.fmradio_preferences"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pre_cur_freq"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static sortByFrequency()V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/fmradio/StationItemHelper$1;

    invoke-direct {v1}, Lcom/miui/fmradio/StationItemHelper$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    return-void
.end method

.method public static unregisterStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V
    .locals 1
    .param p0, "l"    # Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    .prologue
    .line 68
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationListListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private static updateSingleStationInDataBase(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frequnecy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "where":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->createContentValues(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 269
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    return-void
.end method

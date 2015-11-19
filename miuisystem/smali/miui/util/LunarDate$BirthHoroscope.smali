.class public Lmiui/util/LunarDate$BirthHoroscope;
.super Ljava/lang/Object;
.source "LunarDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LunarDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthHoroscope"
.end annotation


# static fields
.field private static final BASE_DATE_STRING:Ljava/lang/String; = "1900-1-31"

.field private static final DAY_IN_MILLS:J = 0x5265c00L

.field private static sBaseDate:Ljava/util/Date;

.field private static final sChineseDateFormat:Ljava/text/SimpleDateFormat;

.field private static sDiZhi:[Ljava/lang/String;

.field private static sIsInitialized:Z

.field private static sJiaZi:[Ljava/lang/String;

.field private static sTianGan:[Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mDay:I

.field private mHour:I

.field private mMonth:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1092
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IIII)V
    .locals 0
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "hour"    # I

    .prologue
    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    iput-object p1, p0, Lmiui/util/LunarDate$BirthHoroscope;->mCalendar:Ljava/util/Calendar;

    .line 1111
    iput p2, p0, Lmiui/util/LunarDate$BirthHoroscope;->mYear:I

    .line 1112
    iput p3, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    .line 1113
    iput p4, p0, Lmiui/util/LunarDate$BirthHoroscope;->mDay:I

    .line 1114
    iput p5, p0, Lmiui/util/LunarDate$BirthHoroscope;->mHour:I

    .line 1115
    return-void
.end method

.method private static getLunarHourIndex(I)I
    .locals 1
    .param p0, "hour"    # I

    .prologue
    .line 1265
    add-int/lit8 v0, p0, 0x1

    rem-int/lit8 v0, v0, 0x18

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static newInstance(Landroid/content/res/Resources;Ljava/util/Calendar;)Lmiui/util/LunarDate$BirthHoroscope;
    .locals 22
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1119
    :try_start_0
    sget-boolean v2, Lmiui/util/LunarDate$BirthHoroscope;->sIsInitialized:Z

    if-nez v2, :cond_0

    .line 1120
    sget v2, Lcom/miui/system/internal/R$array;->tian_gan:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    .line 1121
    sget v2, Lcom/miui/system/internal/R$array;->di_zhi:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    .line 1122
    sget v2, Lcom/miui/system/internal/R$array;->jia_zi:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    .line 1123
    sget-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "1900-1-31"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    sput-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    .line 1124
    const/4 v2, 0x1

    sput-boolean v2, Lmiui/util/LunarDate$BirthHoroscope;->sIsInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    :cond_0
    const/4 v15, 0x0

    .line 1135
    .local v15, "leapMonth":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v19, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v2, v2, v20

    const-wide/32 v20, 0x5265c00

    div-long v2, v2, v20

    long-to-int v9, v2

    .line 1136
    .local v9, "dayOffset":I
    add-int/lit8 v16, v9, 0x28

    .line 1137
    .local v16, "lunarDay":I
    const/16 v17, 0xe

    .line 1141
    .local v17, "lunarMonth":I
    const/4 v8, 0x0

    .line 1142
    .local v8, "dayOfYear":I
    const/16 v13, 0x76c

    .local v13, "iYear":I
    :goto_0
    const/16 v2, 0x802

    if-ge v13, v2, :cond_1

    if-lez v9, :cond_1

    .line 1143
    # invokes: Lmiui/util/LunarDate;->yrDays(I)I
    invoke-static {v13}, Lmiui/util/LunarDate;->access$000(I)I

    move-result v8

    .line 1144
    sub-int/2addr v9, v8

    .line 1145
    add-int/lit8 v17, v17, 0xc

    .line 1142
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1126
    .end local v8    # "dayOfYear":I
    .end local v9    # "dayOffset":I
    .end local v13    # "iYear":I
    .end local v15    # "leapMonth":I
    .end local v16    # "lunarDay":I
    .end local v17    # "lunarMonth":I
    :catch_0
    move-exception v11

    .line 1127
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1128
    const/4 v2, 0x0

    .line 1202
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 1148
    .restart local v8    # "dayOfYear":I
    .restart local v9    # "dayOffset":I
    .restart local v13    # "iYear":I
    .restart local v15    # "leapMonth":I
    .restart local v16    # "lunarDay":I
    .restart local v17    # "lunarMonth":I
    :cond_1
    if-gez v9, :cond_2

    .line 1149
    add-int/2addr v9, v8

    .line 1150
    add-int/lit8 v13, v13, -0x1

    .line 1151
    add-int/lit8 v17, v17, -0xc

    .line 1155
    :cond_2
    move v4, v13

    .line 1156
    .local v4, "year":I
    add-int/lit16 v0, v13, -0x748

    move/from16 v18, v0

    .line 1157
    .local v18, "lunarYear":I
    invoke-static {v13}, Lmiui/util/LunarDate;->rMonth(I)I

    move-result v15

    .line 1158
    const/4 v14, 0x0

    .line 1161
    .local v14, "isLeapYear":Z
    const/4 v10, 0x0

    .line 1162
    .local v10, "daysOfMonth":I
    const/4 v12, 0x1

    .local v12, "iMonth":I
    :goto_2
    const/16 v2, 0xd

    if-ge v12, v2, :cond_6

    if-lez v9, :cond_6

    .line 1164
    if-lez v15, :cond_5

    add-int/lit8 v2, v15, 0x1

    if-ne v12, v2, :cond_5

    if-nez v14, :cond_5

    .line 1165
    add-int/lit8 v12, v12, -0x1

    .line 1166
    const/4 v14, 0x1

    .line 1167
    invoke-static {v4}, Lmiui/util/LunarDate;->rMthDays(I)I

    move-result v10

    .line 1171
    :goto_3
    sub-int/2addr v9, v10

    .line 1173
    if-eqz v14, :cond_3

    add-int/lit8 v2, v15, 0x1

    if-ne v12, v2, :cond_3

    .line 1174
    const/4 v14, 0x0

    .line 1176
    :cond_3
    if-nez v14, :cond_4

    .line 1177
    add-int/lit8 v17, v17, 0x1

    .line 1162
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1169
    :cond_5
    invoke-static {v4, v12}, Lmiui/util/LunarDate;->mthDays(II)I

    move-result v10

    goto :goto_3

    .line 1182
    :cond_6
    if-nez v9, :cond_7

    if-lez v15, :cond_7

    add-int/lit8 v2, v15, 0x1

    if-ne v12, v2, :cond_7

    .line 1183
    if-eqz v14, :cond_9

    .line 1184
    const/4 v14, 0x0

    .line 1193
    :cond_7
    :goto_4
    if-gez v9, :cond_8

    .line 1194
    add-int/2addr v9, v10

    .line 1195
    add-int/lit8 v12, v12, -0x1

    .line 1196
    add-int/lit8 v17, v17, -0x1

    .line 1199
    :cond_8
    move v5, v12

    .line 1200
    .local v5, "month":I
    add-int/lit8 v6, v9, 0x1

    .line 1201
    .local v6, "day":I
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1202
    .local v7, "hour":I
    new-instance v2, Lmiui/util/LunarDate$BirthHoroscope;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lmiui/util/LunarDate$BirthHoroscope;-><init>(Ljava/util/Calendar;IIII)V

    goto :goto_1

    .line 1186
    .end local v5    # "month":I
    .end local v6    # "day":I
    .end local v7    # "hour":I
    :cond_9
    const/4 v14, 0x1

    .line 1187
    add-int/lit8 v12, v12, -0x1

    .line 1188
    add-int/lit8 v17, v17, -0x1

    goto :goto_4
.end method


# virtual methods
.method public getBirthHoroscope()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1207
    iget v9, p0, Lmiui/util/LunarDate$BirthHoroscope;->mYear:I

    add-int/lit16 v9, v9, -0x748

    rem-int/lit8 v8, v9, 0x3c

    .line 1209
    .local v8, "yearOffset":I
    sget-object v9, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    aget-object v7, v9, v8

    .line 1211
    .local v7, "year":Ljava/lang/String;
    rem-int/lit8 v8, v8, 0x5

    .line 1220
    add-int/lit8 v9, v8, 0x1

    mul-int/lit8 v6, v9, 0x2

    .line 1221
    .local v6, "monthOffset":I
    const/16 v9, 0xa

    if-ne v6, v9, :cond_0

    .line 1222
    const/4 v6, 0x0

    .line 1224
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    iget v11, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    add-int/2addr v11, v6

    add-int/lit8 v11, v11, -0x1

    rem-int/lit8 v11, v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    iget v11, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    rem-int/lit8 v11, v11, 0xc

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1232
    .local v5, "month":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/util/LunarDate$BirthHoroscope;->getRiZhu()I

    move-result v1

    .line 1233
    .local v1, "dayOffset":I
    sget-object v9, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    aget-object v0, v9, v1

    .line 1242
    .local v0, "day":Ljava/lang/String;
    rem-int/lit8 v9, v1, 0x5

    mul-int/lit8 v3, v9, 0x2

    .line 1243
    .local v3, "hourOffset":I
    iget v9, p0, Lmiui/util/LunarDate$BirthHoroscope;->mHour:I

    invoke-static {v9}, Lmiui/util/LunarDate$BirthHoroscope;->getLunarHourIndex(I)I

    move-result v4

    .line 1244
    .local v4, "lunarHourIndex":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    add-int v11, v3, v4

    rem-int/lit8 v11, v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1247
    .local v2, "hour":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public getRiZhu()I
    .locals 6

    .prologue
    .line 1274
    iget-object v1, p0, Lmiui/util/LunarDate$BirthHoroscope;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v1, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 1275
    .local v0, "dayOffset":I
    add-int/lit8 v1, v0, 0x28

    sget-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 1276
    return v0
.end method

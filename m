Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E452B4DE55A
	for <lists+tipc-discussion@lfdr.de>; Sat, 19 Mar 2022 04:39:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nVPvw-0003PY-Ut; Sat, 19 Mar 2022 03:39:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <prvs=00772ea2d9=ying.xue@windriver.com>)
 id 1nVPvv-0003Kp-N2
 for tipc-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 03:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nJMm2/ei6ePXa0okenAkFyoO7oX5ybzf8tc2TlngyAo=; b=Jllpsw0ggQzlr55qCr7/2uGjiG
 gZHgwF94denpwjyNHx2zfZ7AA0gSmz8IoxXUC9Ja3a2seeUrmFdERptBg0qW4NmGzZdNEuLLDpxob
 6wzMywCkX+OsDO2n8DRgpxyKPd7h3IZtQIrqQ27AygIcCqCtcyrWkFQKB+hgpBkC+zzk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nJMm2/ei6ePXa0okenAkFyoO7oX5ybzf8tc2TlngyAo=; b=Gwk3MQ1640pBQ/a0EvlvXqFeGI
 PrdEUuYJy/6tiS9CLzVZ6ZOH22EbFdqZPpmSv872uNf2tNeXCZKUpbQyAWs8Y1dPmO17YHVYR7ctS
 1wCvVvMcUZbJcRoZ7TyfdilwZP90f73tPNyW4MqC1DcgCr4a0gor8y6q2WHTKphRblsg=;
Received: from mx0a-0064b401.pphosted.com ([205.220.166.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nVPvr-00088W-1M
 for tipc-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 03:39:14 +0000
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 22J3B7h8019591;
 Fri, 18 Mar 2022 20:21:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=nJMm2/ei6ePXa0okenAkFyoO7oX5ybzf8tc2TlngyAo=;
 b=Q3KKBlp2Bb2ffxd8QEU9Af9qg2UPooXHGi6FaLj3Byw/iYBP9jjFbJzyKTOqDECwydcm
 NzENgEF1gcuGjbjPgRuongoDN2diYJladjnAs9Bt4pX09JXlrUfBAMrjF/4XVi+5QKFV
 Av31Qtblq+whtzR4wxec3nts0+ZQ75WMHrjp2TXBp0WUrgAHJJl0pAd5e1a/Ozmpm32A
 FKNM4IjfUQeykTvUBjU63DVW3bnYqnPlwTv5+8j904kj73t0VnnQ0/934Jmip7uyzkr3
 X4SUJsmwE63IwkVg06t27PCfy4RCwNwEroNO+a8sv5OMRJ0BNrJc92IJaijuRA/jFmJY tw== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2041.outbound.protection.outlook.com [104.47.74.41])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3evgqb0tm5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 18 Mar 2022 20:21:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UwOkC0KXm74q90pA2py2almA6KW+uPfBgoMMask/2klh2YPkAP5eWLapKRD9dYHnnQjGA2xJXgTS+4OaWbcpfu3HmNpxGKclEJtWYHrfyRjxSizPK26VzYdWG8HJXrfpydCT+40ZdbT75vdCB5MxSVZkH6G25wi5f/F1r7bhfJiu1LL17bF7HSIYtpijv8EjXJrUyLS0Y6fudcqRsExhSMrBiQ8MldRX9gWlt9zK5YivY9rPi2Cc8NSbOLGMOGmWOeYZ/LFnvBDret9Z983XN2YXkt+spcrGVhMdF4EXFghTY3Pn3zTNZfa4Vrs/jqIfBm4cYDBtBxk9ijwD3c81RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nJMm2/ei6ePXa0okenAkFyoO7oX5ybzf8tc2TlngyAo=;
 b=Ud+SB0ysTyMrlTpieO6jfatrF+zdzi0rP6uBYpGmdai2BNY9q3D7v5+8KYRXX7VrKB2/k+enTJ22Fclnf44EEjenHpfQX2bjJXHLBKMU7fnhUX5vUXAitkQ4U+Dqbsi2yngMx1fRcHSyhd68eMHJTdoRDxI0rCCqoKoMn8vB8DFnpW+jE0xBbtCgbRxPs+Wm/n5hSK+dk2d9amI/YYUqcYS2K3THKFtNhnvooVjrKf7T4GW3jVOE4XbWVKY5CVlE3A/W2LUKfHNv0SD4to70ooBpwTKTqxmFiXIhM1z+oFjGoss4H1cPAzRS6NqDFgymt+ZJ39oAAcdxl2fKEWl5Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) by
 CY4PR11MB1335.namprd11.prod.outlook.com (2603:10b6:903:26::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.18; Sat, 19 Mar 2022 03:21:06 +0000
Received: from DM8PR11MB5686.namprd11.prod.outlook.com
 ([fe80::a14d:2d9e:bf42:c4ed]) by DM8PR11MB5686.namprd11.prod.outlook.com
 ([fe80::a14d:2d9e:bf42:c4ed%7]) with mapi id 15.20.5081.018; Sat, 19 Mar 2022
 03:21:06 +0000
Message-ID: <364b931f-416f-ce80-3eb2-e749d2247e15@windriver.com>
Date: Sat, 19 Mar 2022 11:20:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Hoang Le <hoang.h.le@dektech.com.au>, jmaloy@redhat.com, maloy@donjonn.com,
 tung.q.nguyen@dektech.com.au, tuong.t.lien@dektech.com.au,
 duc.x.doan@dektech.com.au, tipc-discussion@lists.sourceforge.net
References: <20220318035831.208338-1-hoang.h.le@dektech.com.au>
From: "Xue, Ying" <ying.xue@windriver.com>
In-Reply-To: <20220318035831.208338-1-hoang.h.le@dektech.com.au>
X-ClientProxiedBy: TYCPR01CA0035.jpnprd01.prod.outlook.com
 (2603:1096:405:1::23) To DM8PR11MB5686.namprd11.prod.outlook.com
 (2603:10b6:8:21::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 38cdafef-b899-4d2f-f211-08da09578144
X-MS-TrafficTypeDiagnostic: CY4PR11MB1335:EE_
X-Microsoft-Antispam-PRVS: <CY4PR11MB133519B0227BF8A4541C1AD484149@CY4PR11MB1335.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WsE8A4SxmEvEIdfcFSNeneNUZAa9dQbq0BJIalSYlp0gzTuvxqL2SeGHzhmkRelkHejNWJOcfUxF/LqHi5rWpANsA6xpQHehu3/0vmr3Cm8BJmMFTJG7zBKiz1msvlat4Py3J1N7r0ZG36KZk69XYwrEQJn6NE0rKzAtPtZqnu7KrvCnmx2vXOOu47doPW2eoJW0EXsb7oq0gAt0cRPE8XIflpmu8xYXrk9IG8HVti19ieivHfC/IP3aKzEGHa5eNg3x3ikdM9hbPFt0aCbOGEasPTIhfAZ14QJXxbkhJ+HzRiigxNcKIRCCQVd6LvbJ9TJUIPRtS3WnZHIEvKVPxCXlEq/GR8zz86ohGPa8e3doADcJRU9JIDRmtHuKdxwOBfoZy3z288eD7ZU9PMoOVQZDqAz2jn40mHHSfITiGb/lxQMEaZvqtZkVBOBoAPsish3tRLpVhbzwoolUkXtpxdVCIx/gd5IBLc6uOdYVhs2zT//JOz1KQ/ij8Oet5Duj1LkrDplMUge6l3RFonghkrAasf76VZ1GfarLPy3Bb6TW1Kt/b12QdM00YbQF49xwYicdmZsMb1pJicbv4glCerTPVZvnVMxBKQkHLnvokgys90vbXxS8o+aNKmj80VdYr0JVvS9d+2M1KincEW9DgE0NFGXziukyP58Vp2DAR1Yqlc+Upz9OM/FEF/4e1XgCMO/cI6lgyGephLBuNiqqIFZfr3LdIWS9wTjZNJPlm+MS9ofqx36q9snC2BiuStOlY3gfTVIK+BTHAaY8agbY7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5686.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(31686004)(2906002)(31696002)(83380400001)(86362001)(8936002)(8676002)(36756003)(66556008)(66946007)(5660300002)(66476007)(6486002)(6666004)(52116002)(53546011)(6506007)(186003)(2616005)(6512007)(26005)(38100700002)(38350700002)(508600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cllvcjJSVGlIM2hsQll2aktBZHhydzV4ZnRXaVhoRWxWRjhEeGlnSklrbWNM?=
 =?utf-8?B?VEtyVXR3d2V5RUZPMjF4OUwzSTAvZnllbGVNQ2hpWnY1cUxpZ2tqSEEzQTlF?=
 =?utf-8?B?a2dTSWd2Rm5aK2MzZ3QrMkhaQ3k5eFFCcXh6U0NKNm1YS3RPKzBkaGNvL1Ja?=
 =?utf-8?B?NWhxVDdrUitDR1gvRGRGZE1VeTQxQTI3NUNsM2dvTFVaQzlFcDhmdExPQVBS?=
 =?utf-8?B?MnpycndxMG9DR3JUaE9QUkpvNmM2RXRKL09YQy9jZzR2UC9mTUZlN0JQcDB5?=
 =?utf-8?B?MW1rS09rWDBVOXExV2FjRmIzaFhRdVVSMEZxdFVRWW1DUHJ6UE5iRGlaNG5T?=
 =?utf-8?B?MU9Qei93TzlpOGJreTdvYlZKcDNXU2VSSGFmajZFVThmNVNPbVM4dlZULy9u?=
 =?utf-8?B?N3NXSlNydVloUnI1bXVSNkRFdm5qVjR2dWJZQTdaSXNDMnVGZzVZSWR2WXNK?=
 =?utf-8?B?eFFXbUp3NFo1N2N0ZTZpQTZuMW1renRiK1hXeEhKMEpraUJ4czlENFozck1q?=
 =?utf-8?B?aUJ5Q3M1K3MrakZvaU9uZUZ4VGFDek9TUGtXcG1kQjhwd05hdmtQck16dVR4?=
 =?utf-8?B?djBDS1FSVDMyRmRFUjhEQUVBbERiQ0tLcC9mWVpodW1lajdUK0piN0lMZHBC?=
 =?utf-8?B?NXBJTUd4UTlTM0IzcVFhcEV1ZXF6MFNrV0FGbHdCM2I3WGtSZkhkV2tBa3FN?=
 =?utf-8?B?YU5YYjV4c2l2SUozaHhjTDZVMUNydEFxRm0zSnlsbmRKcDdLak1oallwcXZU?=
 =?utf-8?B?Mi9FRnZ2cStETVVNWmxkZHhFb3NEOERPNVkvWmFGQUdJRHgzNEtxZlhKOGp0?=
 =?utf-8?B?R0RZRnZJbkI0ZTdoejZBT1JtQzBwL3ZKZy9DOHFUeHV0UjdNY1QrNUlRR2tU?=
 =?utf-8?B?OUMxTFdIbXg5MExMQ2tQVWxBMDR2aXJGS2ZadnBENmg1Y1RKRk5ZaFFibmVx?=
 =?utf-8?B?S3NuK2ZaWEZsVkRaa0JCVXE4TG1jTlo2SEJmYVpsSHdPM2ZrRjV0cHVNaGxj?=
 =?utf-8?B?L0tENW01TU92S2NPNnhLWk1KTjdSemFGazdkaUMvQjFXUEgyWVY4a0p3RE52?=
 =?utf-8?B?TnhEQ1E1UHlVQU1CbmtobUdQOTFsVExnRjByUk94VEhwUFRrQnIzem5jaWtC?=
 =?utf-8?B?QnpUSWFjZGd0SU1SaDZPcnlLNjVTT09wS25UYjJRaGd4aS8wNVZPQTZiRDlL?=
 =?utf-8?B?WDN2ZkFPY2tHS1phYzRlYnhDM01yR2tWS0dqa3BKUm91R21BQ2hpZTNOMHFI?=
 =?utf-8?B?dy9DSzRIRjIzMzg2bTdXN21YOEFWRGJCWnlaUWtqYlYzVW52OXFKbUNKY3ox?=
 =?utf-8?B?NjJZQTdlWC9nWDd0Zk55SnNlSFJYTEJDM0hUL2hMV2phRVM0NE9reUY5UUJE?=
 =?utf-8?B?Qy9LNVFkcnpObWVUbUFVdml0TVBVTWtxeWx5Vy8wbmEzeUJqMzkwRDlBbUFJ?=
 =?utf-8?B?cnZVVUVwaitIYTFlTkVXbHhVZHZvU1p5K1NaOTZqUTEwWVBiT2NmcE1JSjhy?=
 =?utf-8?B?bkttYU84UGlDTWxHQnhtYURPREx1TkREOWt6STNZUmcrTTA0djRxazkvUWNL?=
 =?utf-8?B?b2xlV2JQaUIxQkFuSzJ2YXowNFRTRERhZnE2Sk9FVnd3NDZKejUxSnlWR3d2?=
 =?utf-8?B?TmkyQTBoZEJ5Vk9aek1hK2ZHcmh6L2NaUjB3YU1ZTlBCN0p1bU41c3h0N3Uy?=
 =?utf-8?B?bkxSNjY5NDJoczVDcU16dWM3L0RIM0RRQ3VaWG04dWU2UXplR1ZQdWhsL3dx?=
 =?utf-8?B?ZElMZXhLYTQwVElraWwrbTdsajg5QWlmZHgrcjY2ZUJtdlI5NVRWNmZ2VWk2?=
 =?utf-8?B?R1d4N3dzRmJ0RWNqd3N4V056aHduRWpodzJlN2Z6UUNjRTFNeDJmM1pWWE56?=
 =?utf-8?B?VzNic2UvSnFLekZoOEpyUllSNlZ6RXJZd3A4QTBOR2pqNGM5NDVrcXRtZXli?=
 =?utf-8?B?ZzU2YjNhMHlqYVNnemRKVTEzbjdlc3RxbjlpTzNUVnhBdW1DUnB2M3krMkFz?=
 =?utf-8?B?UFBYbjRCdHl3PT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38cdafef-b899-4d2f-f211-08da09578144
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5686.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2022 03:21:06.4742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gLx99hDzetFD6JIjk/+hCzAkyVWvABa9Xv4W/W6OM4ZrGOrZbxVjaWank9VGnmIgYL+Cenyaq2pFKZ2L8/qYUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1335
X-Proofpoint-GUID: 5t5BtrhdhGjNPak13sCO4JGPu1vwaHYl
X-Proofpoint-ORIG-GUID: 5t5BtrhdhGjNPak13sCO4JGPu1vwaHYl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-19_01,2022-03-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1011
 spamscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203190019
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/18/2022 11:58 AM,
 Hoang Le wrote: > In the timer callback
 function tipc_sk_timeout(), we're trying to > reschedule another timeout
 to retransmit a setup request if destination > link is congested [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.166.238 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.166.238 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nVPvr-00088W-1M
Subject: Re: [tipc-discussion] [net] tipc: fix the timer expires after
 interval 100ms
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 3/18/2022 11:58 AM, Hoang Le wrote:
> In the timer callback function tipc_sk_timeout(), we're trying to
> reschedule another timeout to retransmit a setup request if destination
> link is congested. But we use the incorrect timeout value
> (msecs_to_jiffies(100)) instead of (jiffies + msecs_to_jiffies(100)),
> so that the timer expires immediately, it's irrelevant for original
> description.
> 
> In this commit we correct the timeout value in sk_reset_timer()
> 
> Fixes: 6787927475e5 ("tipc: buffer overflow handling in listener socket")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/socket.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 7545321c3440..17f8c523e33b 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -2852,7 +2852,8 @@ static void tipc_sk_retry_connect(struct sock *sk, struct sk_buff_head *list)
>  
>  	/* Try again later if dest link is congested */
>  	if (tsk->cong_link_cnt) {
> -		sk_reset_timer(sk, &sk->sk_timer, msecs_to_jiffies(100));
> +		sk_reset_timer(sk, &sk->sk_timer,
> +			       jiffies + msecs_to_jiffies(100));
>  		return;
>  	}
>  	/* Prepare SYN for retransmit */


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

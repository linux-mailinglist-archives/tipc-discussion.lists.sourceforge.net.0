Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B195B06356
	for <lists+tipc-discussion@lfdr.de>; Tue, 15 Jul 2025 17:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y9CT74yqYokpCNSGAcTyoi7ShlJg7riWmPa/auJ7j+I=; b=WwrpxFwa5/WYoaMF0TKu4Nv2jq
	KcJDqaF9S72pypr80iVSsWrXSMpNG/r3rsEcVr+j4xOt8xUGBUFR3zrGt1issP+RNOXX8J/6XTXO7
	T6c3QNizhA9GprAziHmlTvqRlduDIddWxJUe9GsYHa6H7oeMjFe0CIZf0/bu4G6F2tnY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ubhqG-0006Bp-9Z;
	Tue, 15 Jul 2025 15:45:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1ubhqE-0006Bh-OH
 for tipc-discussion@lists.sourceforge.net;
 Tue, 15 Jul 2025 15:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CZWqxqYg0tkRRf91u8pVInnPMNsLtOqAQdS3/LPSrDU=; b=Ef19jGGrTI9jTVcaY+tKVN7LL0
 brYA2s5ADu/lvJAoeUYYk2Mvaod10azrn5DLmbMrPi5MG0tHnVQGzBeSDUmRiyq+kkIqzxLWcTQoz
 b5bkkBsJUE5tCYxgstR2GGFKPik9ITZ25Lt8z3/v5VK+1tIjrEIZKlvVb7usmtQWEBrU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CZWqxqYg0tkRRf91u8pVInnPMNsLtOqAQdS3/LPSrDU=; b=k
 WFg7+PSicT7FaZdGEYws9P4PrtW/M+R5jdN6g/viMwh2yB4KBdNWBClE0l72pFp+bKXB+Fa+x6n4l
 kFyFmD1OM9EQmFrOTPwjcP/EjbBgbp8CVPU7lDcjD2ku84fDRi6YaUFQCrfBLk8tMSdhVxUSgN/H7
 HnlE+AwSzIG30Hqo=;
Received: from mx08-00501504.pphosted.com ([143.55.150.231])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ubhqD-0007LC-Uq for tipc-discussion@lists.sourceforge.net;
 Tue, 15 Jul 2025 15:45:14 +0000
Received: from pps.filterd (m0427090.ppops.net [127.0.0.1])
 by mx08-00501504.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FE46Kd025514
 for <tipc-discussion@lists.sourceforge.net>; Tue, 15 Jul 2025 14:11:31 GMT
Received: from as8pr04cu009.outbound.protection.outlook.com
 (mail-westeuropeazon11011044.outbound.protection.outlook.com [52.101.70.44])
 by mx08-00501504.pphosted.com (PPS) with ESMTPS id 47w5cjwus3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 15 Jul 2025 14:11:31 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WOl2prU+6+ppmEBAMRAX6g1vSIgrAulJCYRa0Q8c6kJ7Tu6ecUvhTAv74lFzjdisaap1vTukP7EWZcTRfGMWh7C0IT9XU1qKkcVUGe6F/N1k7dfue7BNp9zK0wCNCVppwtBMESVYX8rOJ7+yHGEPNdMwBe0nyBlsjfs9X4nc6TqMQ+jB8Dl6a/R48/sktDBz3maMnjtKaLdayH17Baty9h0KuZhNJtNhkqu8tcSBYZgqo5Qg5eiwF6l+19fgJ90eORPfLn84+ipjEP6nxjWujzNPQic3kxysvleNbxhLkalkkrJq1dZhRk+fTNEi+1O2NiTCyN7YH4MUEOP8mPQzfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CZWqxqYg0tkRRf91u8pVInnPMNsLtOqAQdS3/LPSrDU=;
 b=hlClYl27+Jl2YBOGpObn39gn9p74OmlxVMqJDMhi2vIlAg8Y8Lr6Kwhc3hSVqFzsefvGVCrC0JuP7Z/6dN4/+/9HjgCBvyYW6/LdfDfW9Y0kzsTHyymdrP1NuVgmwuBO34Efgtapa32v5Vjuy1fnMWGMyl5pf1HcnIxyFvaVFtZVNdGkWdXKSYhmtDTIqzZLi67MjP/FrTvRaKZCy1crSoW9BzjpYpxrfej0VBdjKOgiHlNb8GFgNVJae7htrWJ+jaKIqxwiQRS4kGP7/e3FUlNHkv93jUvvnpBVnCA1JwmgyoZlfqlkgz70IHiOt0xrKasEzwHQdNgLdiT6gtLZZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CZWqxqYg0tkRRf91u8pVInnPMNsLtOqAQdS3/LPSrDU=;
 b=Ygnkcal0IaaBVq7yMdLu1If+SnPXU+MncL8WmRaz9ERqhiXdDXv5rqNNVYDV7k+0RWvmAsNIccFnR4nviP4JsL2IPdnYkdaMmyoc1gavscb8tGFvCzUOziEsYPPPdyH0MiT91bYAOkjtSqgDk4xVbpgvthh/E/mrRgSPTr8tRfbZkJQe/w0dIkgOhA1ayX1PM/seexYGh76yAImFK10EP9t6RvBpoBrOxQ0flMLTdOwNsWyB2rE5BypAA4fH5IibOIBDG7AvREqjPLuSeBgRRUzRVg554yQe56VsaD935i7BTRWkhV2JgQtpVN41xRpRpc2xbrddYNF8ghiFLt31OQ==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by PAVPR08MB9530.eurprd08.prod.outlook.com (2603:10a6:102:314::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Tue, 15 Jul
 2025 14:11:28 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::2df4:d76d:7b58:83f1]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::2df4:d76d:7b58:83f1%5]) with mapi id 15.20.8901.033; Tue, 15 Jul 2025
 14:11:28 +0000
To: "Duzan, Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Sends Hanging
Thread-Index: AQHb9YyepYkDFAjIg0SjBJAR/fNZrA==
Date: Tue, 15 Jul 2025 14:11:28 +0000
Message-ID: <AS8PR08MB77676F0037273D0534E9BC918557A@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2025-07-15T14:11:27.947Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|PAVPR08MB9530:EE_
x-ms-office365-filtering-correlation-id: 6d439da8-85a0-4fba-658a-08ddc3a97daf
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?Windows-1252?Q?WkNn4Q284OYaQEp5Y/jiZ4CqQihe4AlTekXgW2gsid1OY+VwovS6wDEg?=
 =?Windows-1252?Q?IzqR/T/1npg4l4ERTT9bAOh5Qw8Nl8/p2uWrWUYnqPF5pnUH7oC/XENE?=
 =?Windows-1252?Q?t3r02aKI0xcN9wfNzZVZXROMK0TMHlR18Z+ldSu32XM4ffV+1bBPdR8U?=
 =?Windows-1252?Q?RPnlCNJWTHVMjwy/tFv/7lM251+iSCdmQRKOoBO2BXsuVqZOisFc8skt?=
 =?Windows-1252?Q?iFVuaIUdYPMc8joCaZbmI1h72Y+AiQ1eS3OEbnkvRkm/YIiVWGGRVREq?=
 =?Windows-1252?Q?Rk3fs95YoWL2xzl1Oxb/XQaUhLdHLqLA45LDrebmmW5J08WZpzJLea1+?=
 =?Windows-1252?Q?Ydp9roTrQ+XDLj0PYztXg9Z8gC454Voj8xlmt+vW8JnybL3a3OqvEbVm?=
 =?Windows-1252?Q?LntDf30TGRwDBSCadrcPluuEFOwTOkoGlnlJDd7gWDywMxdWChQrvzh5?=
 =?Windows-1252?Q?3/UFnFeBh57JrBE+6rpvuo2TTXUbk+dqX6W/bVfJH3JdQA5Cq4eQmY4Y?=
 =?Windows-1252?Q?DDk5DzXlBAkSmBQqojaI5nQSXf1EOLNG0Y0rK1dTAYtsHrarCp2OYzkV?=
 =?Windows-1252?Q?8utXwCmM+TdYBsDf/FSmuDoNNIbXDGp/MUDrQw6iZrARele24A48K7cu?=
 =?Windows-1252?Q?N/A8c4D7x4a1vk5mTHKL7Vz1CaTYVy8gJWyzLUafsfd4ztPGqPZdwy50?=
 =?Windows-1252?Q?qkH3/Uy0kx8veL+eoOBtoj1EsV+PCyNY+I3Th7jHTUG9KhVMEPkWL66y?=
 =?Windows-1252?Q?tZgFHJxIX3aRkqZAjiZzxkHhdiYSOmutZqACU+UWqymcvPQt5O7dsDup?=
 =?Windows-1252?Q?lJBLzP3vJUdpQTQsBk5lRzxPcpiCVZwVgP2sXWRqikoGenXEx12kv3De?=
 =?Windows-1252?Q?r56ZN4y6sOdBO8jzM/S1hOos+VoEUJUwAr0LVmD0r8cJb+VygFBing1G?=
 =?Windows-1252?Q?xkthLueaowmm6iKTZcVZ3eVKm869mQPnEFK4TqpaKO8Y30wbsIhHEDfW?=
 =?Windows-1252?Q?PEybNPSTC0hD717Vz9BRYMm1cfwI8Rmv+/T1eGbDs3HSmaxm6OyB0IhJ?=
 =?Windows-1252?Q?JWRjpvVHZA4Rv1HFm7s30S5FzvKyI5dppWSmn33DiI+eeFLvs+IlIPFf?=
 =?Windows-1252?Q?BArocNOuscB8H3aMrUlOJrf/Y+SPN6atfYGup29ZcoiYohzb/HiV1dTo?=
 =?Windows-1252?Q?5dFms/a8MBGI1rM29dYNwvo27oiOYgg4Zvr5ja0fRx5DkIosvNHVRQav?=
 =?Windows-1252?Q?bpRr4bvra5/7xQOEqBPlSavfpFtv80WEdp2K7wDSVuW9wmHCCohGTNEI?=
 =?Windows-1252?Q?ni5QfYDpZOfhlwqDUoCu4DodKtTqPeOY3TNNtos/aWz55N5pzqKIbg7u?=
 =?Windows-1252?Q?VG1VLq+HG+f/VU26OH37Mn/OOvoNNWH92nsAWdjasGN6l0ZHI7xFDZF6?=
 =?Windows-1252?Q?cL2cn4wvK85e6kCzwx8b0BCa6HUafS1ALrzezRhyuTsdMrMaY29REVle?=
 =?Windows-1252?Q?1b+ACSdZUe5LFqcNUMENA3Jj6nzvRnbDtvD7YPFGCejSb5KuKPHwkIqk?=
 =?Windows-1252?Q?NBQERYhy0jap1NAMseWHVOom8ELD9SQNlryFxw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(8096899003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?mBFoOqNPSGOYmKfmk6VtrROHv6jVf5IBA9XUNvQLLlPw5/k07BEaF09L?=
 =?Windows-1252?Q?Zdjb6LeogTyKBvA5JulKAdgR3fGwofjdvB4t+9T2yqAbdNgZ47c8ZPWf?=
 =?Windows-1252?Q?bmteWH0v5gRjmsDir9eGTj1xED3Cgsin2Bq3WMVgo4Mm+U/GiES6V0et?=
 =?Windows-1252?Q?jTd5PE25eXH6zh1apC6HR/aOcIRZ+RMP+FkCOEgh1PuaccGuxPnSBMPy?=
 =?Windows-1252?Q?GBkwRPMHq+EEyfoAiEyJEGbyHuyhIy9ZOs9Z4UOoPXQM1SH3mkz1MbCw?=
 =?Windows-1252?Q?h0SYKf+GsVYWOEUAdwGYaWuzJLuKj3QRy2nHjd7Xz0d9kTKAju7V521p?=
 =?Windows-1252?Q?waOZEtte+4qf+/zkbp0V21WaQnSRBB14CLLrIqZjHmR3rSqlWaiZipRb?=
 =?Windows-1252?Q?XFMs1pRStkKxUFlTRLKDk41+WMssQr0aySvy5RBBCT214sgMlJv+d4R2?=
 =?Windows-1252?Q?FfwieDY9dkCz8BwKftv+RrhsSFJqnc0Uc2NJ5HPQOYWQN12AA9Zx7ulU?=
 =?Windows-1252?Q?B48MstUjucgRcJLGtyinujCdGBPGD5bLfJYYPxHUDMcLoFq/bhyLwPYj?=
 =?Windows-1252?Q?6XkOsfEnzbb5F5E0hMH3BGBYRydPmQmiaG6Ya4B4SZf7DmGPWis21F5d?=
 =?Windows-1252?Q?pvIzouNquk75d8oA7ZXRfeJmQljk6sxjRtNmKe+e8jUGxyM8xVQ1Y1GQ?=
 =?Windows-1252?Q?XDgUg2bqBBuSsEPeyCVwMOeGOfUdy35bAf3fZiuYqpl54s+7Hsl5phfF?=
 =?Windows-1252?Q?sPAQAMfpcpB3xd0oH71q/pssWrOgw8hQNSwMQ90deMft4AoM6EDkgbDp?=
 =?Windows-1252?Q?RUM0GGOS4SZLq2UU7BL8NG3IezzcMWPwHV/wY0mTetO3t4xxUzJdX8Az?=
 =?Windows-1252?Q?8cAUvOW+b5AAO91U1R9h7GIf7jlgqP209uXnsgKc1oBRYu3LSOSCS4BF?=
 =?Windows-1252?Q?e9fkEL2W+40j3n8UTzSaddCIknDAKvO4j2Ul+i/XEcAndzZZPF9rx8IF?=
 =?Windows-1252?Q?CI4LbsIhkr3B+hmGM/Mjq1KkMh5YnNi3XfbS/mvUQxs/rYXGEBqL/F1J?=
 =?Windows-1252?Q?QvLXUEnpY3/bUB9daGK4rXkirP+E11e2Qd9ZsCc1EJMb+fndmwZCZMYr?=
 =?Windows-1252?Q?IivqHpaiop1znvlowRzZw3mqd42KyOn6XSCgSdy4JM183y7/76gWIwiG?=
 =?Windows-1252?Q?0Em1APHviTHKtq8XpxIRWKgkx6qPo4GvD6GYFjlOPBAGoIjQy9fXTqXp?=
 =?Windows-1252?Q?hIS9GK44DEYMPsI4pdg+U0MqU5+OkpKOwQTCv9BEX1Gg7G3DbElgrbOL?=
 =?Windows-1252?Q?InnZ5JyEvvi3fsA81GdctD48AIoJ8MadZ2BfNQZ0VCmbFGbq1RGGZCvf?=
 =?Windows-1252?Q?nyHd3eLhLIBK62uV3izD2n0q+LRQyt7/+dM75qdcbs0KgsJGtI+OwNZi?=
 =?Windows-1252?Q?Bn3A7HNmGTmV58vXqBwiSLYcfZWAFWFft4VpPi+7TiX2iXbRzDRkBJJN?=
 =?Windows-1252?Q?FJzUf4R7gvM7F3VNXfS/kLAmAbWzUMQ9tyLYvSG2zy+CkMIbRtM/O4Uw?=
 =?Windows-1252?Q?rMfUSVAJ+mSLiKcP7XFml3cpVluSZem9AxchXKIiAky8R/qHZg5zkXCc?=
 =?Windows-1252?Q?sNBxhYv5EatRA1rbHgras2V3W/qvGqfR/FVTHl/YbIyvuXVpXkL6BC7f?=
 =?Windows-1252?Q?df9mc8OlhLH6PIMuykJchEBzTr8S4vH6?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: bnZkxolc79IAf8jQwBzqEgouZT5CyFfmrfTHiaz+kjKi3d94zxvZzVdbZLyCFkuWJJYeSOMK7Ss5pL2A/kjPfDjrbTXOxxGwn1bisPCfR9lZyzVMBlVnW7nmYk+wg88aVYGEL9VGYiSvy70shitQ5fHUDMYBqYkxnSCbwgpYqcNiKcmlV0+aVFW/I0CDIlR1YuyHeCNckYjQrHyPKq5uFv1R6kWS+s2k7WRw/rJ3ec+Ewq2Fh2arUtbAiTJGeNB/5eTA88gZ5p8uzE9wKBNNc0/EiXscrhgcREdwi3AJ409wY0TatJ2s0+/sBxN9GCEziEGPjdaDOun6e/hlTBDH5DJ5aOwAQRIfQLm1vY/TyFAQCG6XVmGwCKMQt6JM2kYYXhdvA1KzVACF4apvJdGySUR2LDEu2A5mzmQYNGQRaEmr1dCXddV82qbEb/+NHYYaF/79QDQtBfDxe2KdMYr3fIJHileUpPGaafvCcd9PArPXgCAt2rzkF9nC5x2hY+lNaE4lWccq+RAIUNapFKjW+rtI92tQ5cYmwHYucFKL2Necsbv8TV0pT9iV96dnl+yc2pb9kX2hWAbhPdgH+RWIvQed9yo6Zxf6rJ2fE8czLN98YhPEStwIN8v8BDqHCb9hYsHf5gknwtr1pU18D70eqA==
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d439da8-85a0-4fba-658a-08ddc3a97daf
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2025 14:11:28.1504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8+znD78Fjz/BKJ2DGhB0qEMA3CkqAn05nUwBtVZWF+Pf9K8BR5mQSwRGz9ttzCkbjNOggCfK25aOAVwtupVwpm6tP48PIZH2HmCnailGVQA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9530
X-Authority-Analysis: v=2.4 cv=IPgCChvG c=1 sm=1 tr=0 ts=68766193 cx=c_pps
 a=JfuMnXBgBKsvokzdHX+w6A==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=igHI_3hapJUA:10 a=40I6_EIbAAAA:8 a=myOUFmRDCCuiUDh_ZfoA:9 a=pILNOxqGKmIA:10
 a=eDJNSSkLtNL_hXIxoKQA:9 a=5XQxO0lfC6jcVfef:21 a=frz4AuCg-hUA:10
 a=_W_S_7VecoQA:10
X-Proofpoint-GUID: esCKcf5g9Vzxlc5Ltuzxsn3UppO-rVYA
X-Proofpoint-ORIG-GUID: esCKcf5g9Vzxlc5Ltuzxsn3UppO-rVYA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDEzMCBTYWx0ZWRfX1NWvGlq3TctW
 CcoCeBwunHOLL6d5EGUuKFMScJ8SxCLDxNY5T11FOuTX2wjnq8O5B+7hqqqfPpt1eRjPUnPiLx2
 neLi8JvuY/JVp38sbLGJryLXSbZQlQefyNqcob4b5Mmht/MVD5VDDbSUSf/7USFpQ84em81JvLO
 idFEk+NC5GW1y9ERH1f6k0w0DavPR0Nk99p2+jGctAZtdriZyp3C52NH5glYpaOv2bpSHv+tYkZ
 RJMh/kRjzSfWl9INhEgw3VDcJd9fC+IS0EKZ6cqoZW1XqChlJC5nA24oPg63/0tgbV4gahqpZ7k
 fFeaBPXB9JwFUQDiRcTmEduiz3yCDtO97f7Pm2yVS/7Af+5vB1IroPlBj+LfSqdtzCOBSDKoXkg
 skjeOarbXN+q8nyh9eej2B27ig5SeLGYBGtCI8WdoibJuKQY0hloQH0/XzGNLDV6SINaHD+r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-15_01,2025-03-28_01
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I'm trying to diagnose an issue with TIPC datagram anycast
 or group broadcast sends hanging when the receiver processes on another host
 are waiting in either poll or recvmsg. These are relatively fas [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [143.55.150.231 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ubhqD-0007LC-Uq
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Sends Hanging
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
From: "Duzan,
 Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   I'm trying to diagnose an issue with TIPC datagram anycast or group broa=
dcast sends hanging when the receiver processes on another host are waiting=
 in either poll or recvmsg. These are relatively fast machines with 10g eth=
ernet connecting them, and varying amounts of background activity. My first=
 thought was to try adjusting the window settings, but the media/bearer win=
dow is maxed out, and the link windows seem to be fixed at 50. Is this the =
expected behavior?

   Thanks.


Gary Duzan

IT Architect Senior

GT.M Core Team



E:  gary.duzan@fisglobal.com

FIS | Advancing the way the world pays, banks and invests=99


The information contained in this message is proprietary and/or confidentia=
l. If you are not the intended recipient, please: (i) delete the message an=
d all copies; (ii) do not disclose, distribute or use the message in any ma=
nner; and (iii) notify the sender immediately. In addition, please be aware=
 that any message addressed to our domain is subject to archiving and revie=
w by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

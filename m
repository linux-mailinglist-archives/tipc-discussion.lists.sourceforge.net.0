Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9362708D77
	for <lists+tipc-discussion@lfdr.de>; Fri, 19 May 2023 03:44:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pzpAp-0002q9-0I;
	Fri, 19 May 2023 01:44:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1pzpAn-0002q3-40
 for tipc-discussion@lists.sourceforge.net;
 Fri, 19 May 2023 01:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S034XTytE5bsGYTe7JSZKZCWbI4WzbbEZCFOETF1bA4=; b=D8jhpa5T0FTDTA1TfZK7mk/lBP
 jquS2QK67JR7j4x4NN4RUrKuqHK0tfSCO2dU+supp1L+YQZqRxyTUEuwtiClQW3ofQEll9O4LTfGR
 4rgduT/dOwabQ0hRdSEXK13MnwduNSyUjut6uYZwNaWWuo1qiJXsMjx4IjVzDoKTRumg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S034XTytE5bsGYTe7JSZKZCWbI4WzbbEZCFOETF1bA4=; b=FfxBAJ23VIf2CALJCSVmTO0TcS
 i8VJBKJPMtDKODmDJ5MPeFXAxXtE8rYxhzk1RDjN0Wr7a/bPL+poXPFAijFmqnGxe3wcp5uus8U92
 WV78EUMSQZ9Wh8+PAEm6kHTwsnZMqUYZcUXzM1pwNr/7G7P2cE+AcQwodiyVtHXJnAfc=;
Received: from mail-am6eur05on2117.outbound.protection.outlook.com
 ([40.107.22.117] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzpAh-0006xl-83 for tipc-discussion@lists.sourceforge.net;
 Fri, 19 May 2023 01:44:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fNzqK/abjzTRcapvxZf8KGe8TBxAPZiumcbuBabC6wSR1o78NFMQ6EorQperIlPHi05xrY9kUQ0xpPN5IhfoHVf+N2zZ2bBzQ8xSVW3YBvXK7TCrgdX7dJr5CRMhHt3sBBfyz/3hQtMtzjNwfFYyiSmH2XrxG7aQjAGDFXArMqkIjV9ZyOSDFForGXh69UqLU/AjI00KxTgM1x2z/snZOUP0aLKwUXCiSe7sSl/AvcxHbpiioUVO3QKIndjJP9FI3adGQoP+ARxYLCueKGPXeuZV87FurR62mGbXB1BijoJ6P+7C4yckDtvhiFCGKaHP5lju505ErDBashN/m/VwnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S034XTytE5bsGYTe7JSZKZCWbI4WzbbEZCFOETF1bA4=;
 b=FwZfhhAI/3Qo2HuZo1YU4R/gHYTu2Hi6K7/uzs2VhciDSJsvK676cFlxDE+l7vMJN6TV9HvY5kMr8G0Ns9svXFSECFnpEn4kIEnHd24lR6OsiatWdSNgliAAnxZRpa9TXs8Ij7EnHEQU4JTSyoBzzLVpPmitW+/k8QHFHnqefb4pjq3hfcnV5mNExJkDrD/OYG3wgLccEEmcNS1ArHp+ia/X+2HGNS5ea29etFGUVFOjTU4QnqoqUQyn45a26HMpqCdNFjea2wv64AoGLVBbWZ8RjLRPzOAQ/cw3JfCkgi6P4LOMIxP4DVKE/QGtjm2uBLg4SnE7dseY1XNVVajnQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S034XTytE5bsGYTe7JSZKZCWbI4WzbbEZCFOETF1bA4=;
 b=jyaWObSaX/UgjuxR7zrxj9YehpfZzWIFWTQyNjRxIDr6lLeYjovreqMrk3nhGq5r7I5zYKK9wjmP2+UpDrO7nssHWEyeFbGeSBwP3Pb/dDQH9cKuOHD04ru8MHx2jT3xAJ3ESLBibQo10NCyI/PH/2GQUIkJtA4eeP8GltMxVWE=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by DB5PR05MB10803.eurprd05.prod.outlook.com (2603:10a6:10:4a7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 01:10:51 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25%6]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 01:10:51 +0000
To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Gacks on, callbacks suppressed messages
Thread-Index: AQHZiZ/GTXF+NDmT102c6zrsM+lOZa9gyIeA
Date: Fri, 19 May 2023 01:10:51 +0000
Message-ID: <DB9PR05MB90782D9E42F4E9ED59ED2148887C9@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <AS8PR08MB77673F8CF0D8B43248CF1E7A857F9@AS8PR08MB7767.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB77673F8CF0D8B43248CF1E7A857F9@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2023-05-18T15:57:03.740Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal Use;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|DB5PR05MB10803:EE_
x-ms-office365-filtering-correlation-id: 63626e8f-1d11-47dc-267d-08db5805e356
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1oyCuxo+A/UdRGunfmvu1GXk5DIluKJM0xEbxKU3Ayv4H8YeSPccPfL8nKZs6dpCr0Wl3kfgQLEbJn+qqK/0MhjKcNTOeEK/7VdbF3N6lluf1CPgZYIL1RG+oObAG3ZvqZRdbhyN7ZpAIY7nHetK91YYVtkrlvCjRoINN7OMi2NoOhUHkiRnfzNq5/yQtkhDClxIDj1smsyjHMljBlKesa8NydOfRgK1HI6k+2jn5ZY12CTMbut3W5WuDb1h3Ommcufg19vazwK6dz1Vzna711VsrD8oqUC/7B2lSZGjWlrMmkECO7gvIspIvJ2azbMl4W2G8z6c0FTDFC58SeR0NG9wD7owV9sUg4tfE3sFT9/Ahl0rFmpfF/1hj/BVzizx6Zv1ZWldV171Nzl3XMdIx9JK1iHhr28bsM9Z6Znw0ou1jNZqmexUq98WZICT35M/7mtqgAmsXj+sj0IelmWD5QnTLcxiHasrShyz7ZlIMPTLDNvOXs1jeXg1QBZ/r78Ehj/Tj3NcKwhi8kj5LKJMAVcTA5jVMQe0hkeakibnIvbPqYT6ux4i37SPioJ5qWdMdtNncJmPQC1CZsKxzk9G04jvejPj6q9z/Rdj3NMhpWOC+UaIWiof/BN/VDvlrUCp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(346002)(136003)(376002)(396003)(39830400003)(451199021)(26005)(15650500001)(9686003)(186003)(2906002)(6506007)(86362001)(38070700005)(33656002)(122000001)(38100700002)(83380400001)(55016003)(110136005)(41300700001)(7696005)(8936002)(8676002)(478600001)(71200400001)(316002)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(66899021)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KZm9ZejMQZogU75zMBr1EhpXEWB7+G0krEcIGW2h3yO5YzmNPtkPzPuQ1b/9?=
 =?us-ascii?Q?8Ie4Te2jFWdYYSBij3se2FSSn/7V5YK968LGDaxahiz4qBK+KdQojHAHsgpJ?=
 =?us-ascii?Q?nVgBgwGhv8ee/FN81QnWOjeIJUSanCxx4u/KMsm15zzeUHVywyuVZEen+SpI?=
 =?us-ascii?Q?sDi30RU6rcmchgeoWYZ9cI3YLx9WrqDdMS7ax0Bant1B5jHnkYydSi6FVb/F?=
 =?us-ascii?Q?tmPtkAofQe9GYIDPsktKWZhji8Epu5TayT+WHrWhp1pgc4Kme0c4FC7C+YY1?=
 =?us-ascii?Q?0CO1AiSxbKEgbov35uvcGCERwGd0p1zgzTeGDRGZ9wCUb4jg9WIfaZbzGk60?=
 =?us-ascii?Q?mMUZcgN07oHusAHUdzMY0wvJ6ONTlJBFETtzguBwh7u/Yu9i1hWAYTYa5xWS?=
 =?us-ascii?Q?H+lW+uODg7WAaU2IXEBw6OQsq3S+3OZSmZ4+Q9/xgaajMm5v1UGsDtLq93Uc?=
 =?us-ascii?Q?oL4ftTW+RQEZ37WwgjqSmT9v1aeWq/2scpV1jJKBGaSTfPbWXwh0qIH98xOD?=
 =?us-ascii?Q?lNUIcPJEJXgCqBqRJLQRy4ASL9n09R8lApvNajnr4jr9Gx4NX+H1jsXjskra?=
 =?us-ascii?Q?0lCY/5sobdUuuAS3xpuZaR8L8my+d5+POO7eUnA2IFCverp67VVNPWf7izhM?=
 =?us-ascii?Q?jDbtxF1hB72H6H81Xge7oZrmXkaE2jN36z/1yMh7syFmVb+26fMXfWUSgO09?=
 =?us-ascii?Q?nEgO5oQ8Ni6ux32T9cO823iq1pwlb1XQD54rMtLCZFVir6NRnajXa8JLyj2G?=
 =?us-ascii?Q?/AJdjpryDipEdSqKGflcndwoVMu3qWJbsK2EQHVA3/9RJEH16SP+IS40AHPz?=
 =?us-ascii?Q?J0bVrJ1H1kNKom7bPrb2kZsPM0XNQfVJX7G61UvBQMvUHwf05wgaz6tN9uIS?=
 =?us-ascii?Q?474ZJH5Ge/f3Qkt/miCLvzkwSuVa3lMac+EUafzVu8nrpHx0T4BpWYQGyxso?=
 =?us-ascii?Q?Bo25hw95ZTbyjeS1LH6AwMrHMIncSDqEw2noXEPs5R9soN+XAgoCJ2eZIXtN?=
 =?us-ascii?Q?/QdX9xxDn6UGPjh/MDipKZsrRUoD0RfkReTxq78ppPVVp+ymx3YBj4rrNGG1?=
 =?us-ascii?Q?4Mt5yHteS/6DHWOWflxotlxbwNcQ5ora919eOHre37Vz8EgL5ngSe5B2sT5c?=
 =?us-ascii?Q?AVNhcRg9mN0Brfkk8c+4H0jfEs24ePKNyhRzQaBVBnXVgIRvCMWgI9lWt8de?=
 =?us-ascii?Q?WWp3jg4sYZTrrppQYj5DjjjI3p4O4rDKayDAk37VTuJ85D/S2gBbHWwWDexp?=
 =?us-ascii?Q?iIBSrCpHln2egZO1tudv3Fq6R2eWbZLBRxyw/vz5PWjGeoNmpQsrCDIqgiw+?=
 =?us-ascii?Q?GIr0H0STFGDSV3qRcW09k4cj135hsHLyWFHAs5sKQu4MDl9zbCgyMSo7R62z?=
 =?us-ascii?Q?6jyMSrMVz8MVobcSYN8dr79RIUuulXxqmIIJttY/u9DS14BwOtW+SjRaKy+N?=
 =?us-ascii?Q?RusJKoDgrXI9/Gbi9RSYZXsI0QvOHQCqZVzjYr/iMdEnoz6Qqf23hn9eYh/X?=
 =?us-ascii?Q?nJdjrLJW3YNIZsdQ/Q+1xuLBBTXkyiI9T0KN13MuMKjybOvSStdffyyw16h2?=
 =?us-ascii?Q?x7t05IsQzS/gB3a14YXrcpGbv32rfCRG+FpcPfPd?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63626e8f-1d11-47dc-267d-08db5805e356
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2023 01:10:51.4935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: saaa0ppNsxSg0kbURQJ6iKLCXGQpLiaWP2DjByqfuqzbfmHgo7VELsdw+cMvcRv4nKSxCb3wDjx+8G3tA3O5safX0hggiuarQl7tuF3gOHI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR05MB10803
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > When pushing TIPC a bit hard on some of our servers, I've
 recently had three of them issue clusters of "Gacks on" messages, with two
 >of them also issuing "callbacks suppressed" messages. These had [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.117 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.117 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pzpAh-0006xl-83
Subject: Re: [tipc-discussion] Gacks on, callbacks suppressed messages
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

>   When pushing TIPC a bit hard on some of our servers, I've recently had three of them issue clusters of "Gacks on" messages, with two
>of them also issuing "callbacks suppressed" messages. These had kernels from 5.10 to 6.2, so it doesn't seem like an issue with a
>particular kernel. Here is a sample dmesg fragment:
>
>[Wed May 17 17:36:15 2023] __tipc_build_gap_ack_blks: 5 callbacks suppressed
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 291!
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 307!
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 227!
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 243!
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 259!
>[Wed May 17 17:36:16 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 355!
>[Wed May 17 17:36:16 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 259!
>[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 323!
>[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 515!
>[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 531!
>[Wed May 17 17:36:21 2023] __tipc_build_gap_ack_blks: 121 callbacks suppressed
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 147!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 163!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 179!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 355!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 195!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 195!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 211!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:eno1: 64, ql: 403!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 227!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:eno1: 64, ql: 243!
>
>Does this point to a need for tuning, or some bug?
No need for tuning, It is not a bug.
It indicates that your servers were under high load (a lot of message disorders or message losses).
The servers have used the maximum number of Selective ACK blocks (64) to deal with this situation and
everything was handled well.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

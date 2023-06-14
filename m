Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5582372FBE4
	for <lists+tipc-discussion@lfdr.de>; Wed, 14 Jun 2023 13:03:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1q9OI2-0006S6-6R;
	Wed, 14 Jun 2023 11:03:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1q9OI0-0006Rz-TC
 for tipc-discussion@lists.sourceforge.net;
 Wed, 14 Jun 2023 11:03:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EWB3pi8Oey/gfYT7PsfPYqxzQ2qFY8JFUTCtPIOg12U=; b=Siq0tsRsALEm2h+Mcrfd7afUoJ
 XwTyvEbBIs0pXxzWF+2rZ4f4yTRhLoFRUVPX7l6T/MdES7zksSKEiVkiEJhjURgqmrRVp52kGV9W/
 EDKYUxOKzrRh2t5N+Ve8RL0r/aBzSlc+3n6WOMux3i9BsyG+d0qPKi8MCRrMu3VkhoSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EWB3pi8Oey/gfYT7PsfPYqxzQ2qFY8JFUTCtPIOg12U=; b=d2h5pwQHXEnjXhvWDUapSeO7Cr
 goewjBvR7QCc5vVGrKC92skxdw3dVJqeKaemjpsVZ8Im1dNU7uj4Z2mDhIn4yiG11OGwV7CRoSoyn
 WZu4UHdd3yYShIK5zzelcIrgb0VJL9I0PH4nyMRE+J4NynXH1NGk/tFjvrFlaGAhib0I=;
Received: from mail-dbaeur03on2112.outbound.protection.outlook.com
 ([40.107.104.112] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q9OHs-002rc3-PH for tipc-discussion@lists.sourceforge.net;
 Wed, 14 Jun 2023 11:03:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B7gjNymo7jEr3RH2pfrEltiFvv+OZNJQDoCqI/BVk7GGS3qhelHnotsANSIR8KLJhwNbDplOZMsXSlyMvAUdM/eQzqTbenmuRPSqTmCufVRAjKIWtguOAna4y5K8GC4148UxsUv8fhgswZzrXYplPEMd5C/LxGeuYXysj+d81N+r97MfbjI16wpVP53oKT8J8MESrpmFG8P6vIdw8Hwfa3ar09P9T5jsBovbVjFtVdfch/sdeNZMtwEpWQ57AwV13BDBNPntFYXQf+4Za0kOrc1/qTbAS+Ku37Pd6nBlBwGwmK+RnPaYh7J14dq5zIpfoDCcPpJi0S1NG6Nh/1q4jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EWB3pi8Oey/gfYT7PsfPYqxzQ2qFY8JFUTCtPIOg12U=;
 b=aYTgtVXS6u+gHmFzgs/32qmjuz68ZJqmOgbKWDy+Fs4QAPrI+5ZTBP0oznBAD8ZTT+7nfOLEZ2Gt9qgPeo/vm7/qPUT+H1+yG/H1II9XtrfQMDBTTtF25zskwHLjYYlSpvOrdfeKQTFt+65qgyaTenMh1y81B2Jc9pdk+HJUs0CI+adxRFucD7xIktYWuBKBfdbxtlkGR8YYOS5NaFBdmC11Yx5P+0G9lK0DUj+SP0qjdKoAHDq91RYT+k8HoGN33MjEmGiXYvx2Zqy3tvVwZFZrdhrMlk1UZp8PYoYjevsr1pS7Oup3Rwtqu2Ziol7zylBTeuN39tMIFHxww8O8Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EWB3pi8Oey/gfYT7PsfPYqxzQ2qFY8JFUTCtPIOg12U=;
 b=FTMdYLuYFBeuEE2zTcSaoLZA8wCWCLjWJY5GeaEHRfW2djwLbJ5PcCdfOOkccN7fyvTGTIoRzOTsNYgMHpQzkbkEZ8OffNcuJmXXK8KDYhRQPSXqmrFEuwTyqde+uexhhXrhXtg0S6TJQEOTzA45pzv1LLXyngxm2kZsdhb5TWM=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM7PR05MB6993.eurprd05.prod.outlook.com (2603:10a6:20b:1a4::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Wed, 14 Jun
 2023 11:03:32 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3%6]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 11:03:32 +0000
To: Lin Ma <linma@zju.edu.cn>
Thread-Topic: [PATCH v1] tipc: resize nlattr array to correct size
Thread-Index: AQHZnpZmSay5i65KEEOEHscxZzTZlq+KD6IggAAPqICAAAD24A==
Date: Wed, 14 Jun 2023 11:03:32 +0000
Message-ID: <DB9PR05MB9078EFB846AB4D096BE68FEA885AA@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <20230614080013.1112884-1-linma@zju.edu.cn>
 <DB9PR05MB90781C45A3592E3962F6F3D8885AA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <6bce9e01.84f02.188b9889498.Coremail.linma@zju.edu.cn>
In-Reply-To: <6bce9e01.84f02.188b9889498.Coremail.linma@zju.edu.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|AM7PR05MB6993:EE_
x-ms-office365-filtering-correlation-id: ffa62eb3-9950-4537-69a6-08db6cc6fdf1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b90MDl27A1eBQfa01Cjgr7lWzXLmZ0dxw9rOOFKWH13kUajOiEmyt3yH5FJokb8iRmBPzyGZOKeEtbbJeDPCdRTL9yAngCuViOdGV5jFJ0/+PdTU5fXZpfM5b9wI2UyVtt/GR4VIJHx2hnubPGnfMTgMpjohxT6zaGYiNbEFVsnwFVeMYOeFm3Duasti+tVF/MlR8vZWjCXrY/pH8jhwdhs09nTCzbyr57E12U7PeyL4Tj6VIiPGisPe9IG58UDNRYWJGgNjvRHsq/01IKtJ6sLUnsv1f+1T3wZ1KwLWY6eIFOA8kHPlA8XFxiI5NnC+X3SqBVweXXa/mCR+wiDQsOSuAFA1lcxWITe2n5y3gLiDi6R1hHTrNWRz3kqjz1HCkCv5DL9eSkXKkgaO/chINANSpscsgoC7fI5eZ5hX6dh/C1keGxxb9jfXEJoBaaUXvyHlaoM9znSDLE68uJ5tnNiMUKq7UPls8+AyQwftY7ccPQNbqy/oVwM2ezVFkHgRrT4IBetesv+WsrV/bEHk3nCq3fMWk96G6hR9N227cLluRqAMFJVPcMO19XB1noJH71cK+x3Xls5XQQ8PA+qDwcmUSn3r/0DQEMTsOIo1KsKlm415qkzOEgUqVizGn8Jw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39840400004)(396003)(346002)(136003)(366004)(451199021)(7696005)(316002)(41300700001)(122000001)(2906002)(9686003)(6506007)(86362001)(186003)(38070700005)(26005)(33656002)(558084003)(55016003)(38100700002)(5660300002)(8936002)(52536014)(76116006)(66476007)(66946007)(8676002)(478600001)(54906003)(66556008)(4326008)(71200400001)(6916009)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFVWUTNKdG5TN1d3eEZxS0ZnaW9RaFJJTGFrWXkrR2hTQ1BvcVpGUTBiWElX?=
 =?utf-8?B?c3hFR0N2QlRzZWNiRjRFanFmM1VDSFJ2a2VsUG9FdzVmLzdlQVAwUzNTQ0lw?=
 =?utf-8?B?RFAvSnRtV21IYlUwR2REeElUM0t0Y1FNN0Fpc0REcmNsTDdRYTV1RW9sd3hZ?=
 =?utf-8?B?Rld5RDdYUTRueU9CME9WbWg2NVdvWUl5TVp6TGY3MGZXQ2k0emlaUTIyUWVm?=
 =?utf-8?B?c1dNREhxVFJLUXF1MkhpS0h5TjRRZkZwUEVLbFcxK21RYVAva0JtbUFyaEF1?=
 =?utf-8?B?ciszSHkyWTNRYnA0eFNzYXRRN0pzeC9DRG1TUWpQSXRjNlorYzJQc09jM1hU?=
 =?utf-8?B?UGpGLzVRY0FsVFovZW9TeUhmVllKTXgwV04wZ0JiV1loVWFmM1RnSE4vVFZa?=
 =?utf-8?B?RVdEMUVxTXpCb2RxSERMSE12SkFQOWhmN2ltQzF5bW1QbWFpTEJ1TFFXaEZq?=
 =?utf-8?B?UnNLSGc0a3p6VUk3K1NSVjZaQk9DZzkwSzZoR1hpTGhHQjg2UkNPN2FwaXVC?=
 =?utf-8?B?M2M2dVg2bEFHNjEybmxpZ2dLeTlzMkNsNTdhU2JDL0o5YmdoRUJCVXZvaFFw?=
 =?utf-8?B?aGUyMFJ2VUU5M2V1MnhBZVhZMXA3VU91U010U2xkVDVxZ2pHYjZRNmNKWEdK?=
 =?utf-8?B?dGh3SHN5SUxjTFVoTFBLQllTSDcvSUdXKzFFMWs4QmZLMzROZXVMbzhCb2V1?=
 =?utf-8?B?L3FrN2tkcVovR2QxM2M0a0ZhL1hGUlljREdlYTM0U0pyNHdpVmFnRGV2Zy9x?=
 =?utf-8?B?QzhLdWpRUiszbzRmM3cxRW90ay9oYkRKT0pXOVRySk9taHR1V2NqdXYyRHR1?=
 =?utf-8?B?QVYwc2xoVDQwZTBBZStJQW1iOGJHejgwYm1iNjJpTVoweGtYTmhadUZtM05U?=
 =?utf-8?B?RTIzL3VvcnlmeTh0WHFuTldiMitiK0l2QU1aeXI0RENYQTlnOXJjQjZPelZB?=
 =?utf-8?B?bHR5eEJ1WEZDZmpaNU05ZVFPOXZBR3AxR25JNlZrNjJlYWZGSmxUM2g5ZlRv?=
 =?utf-8?B?VDVUNkxtNU1ZUHFBaytwWkxxNkVOZko2QS9kRVBmbXhPbk53ZUhXbG5Ud1B5?=
 =?utf-8?B?aWdJYzFUWUJRNFRDZWE0d25pbVdxS2crT0s1WUhvNXBIeUpmQ0d4SGE3SHpO?=
 =?utf-8?B?eGM5b1FPOHFMWEJTK1BOWmpqeGh3bU9lRC9CS3lnaXNGVm51bldMcGl4aUtY?=
 =?utf-8?B?WmR0bGVNZTBmQkJNVFhHMTBiZkx2RGFPODB4c0NGYWlQYS9yUXJwYVU1Sy84?=
 =?utf-8?B?aS9NWmlYN2VWVFRhL0FKWEtkY0tqUURQd0w2NnZwOFZwaHlTY0JKemRnamV4?=
 =?utf-8?B?bjh0a0lISjVHalJENnlpdFJjTm1tMXVIZklCYTRpNXYxb1JPa1dDTjhJUm5D?=
 =?utf-8?B?VWtGZnNJK0ZERlRRK01YanV5cnNvSFI3MTBIK0ViOG01U29wc0hrNVVyenVD?=
 =?utf-8?B?MkQ5OE0rTUtsNDJic2FFZjYwdG1EenhFdDFyYzJVVUtZWXp3UVJCYTRLVTRC?=
 =?utf-8?B?NHpyNTZGZU1DSktEM1A4WkV3b0FoZi8rRnBLaC9TVjFTWFdFSVZDMEJ5TGVD?=
 =?utf-8?B?THg1YUdmUE9meU5DSExQUUhtaTBFSWhqRWxOaUdURlBlYWU2bCtZRERkUUtZ?=
 =?utf-8?B?ckxxaHVLQkpOMm9QOTlSY0pSMGZjTlFQOGM2ZHZQZzZKZHJXYmJCSzhrUUNk?=
 =?utf-8?B?OTRkZncxazBPMVBqUTdNVEhQZmo5NURkL3dyZVREVG9lZDAwbG4yWmR1OU53?=
 =?utf-8?B?eElXYjlKeTVOazhjUW5QNDE3YWtoTTJtT2lXbEplbkV5WW13bmdYbXlONVhB?=
 =?utf-8?B?dTljbmh2NktzTWxZbWdsekZ2bHNRNmw5T1pQb2RwaVl1OXpyZWZZSVVXajBm?=
 =?utf-8?B?WWliMW4xcU5LZ2Jqb2RuaTZ3M0IvcTREdDFscUs2bjZWTzR1eldtM2p2TFo5?=
 =?utf-8?B?aWllaC8rN3h2WnQ5d0lHYnk5dUpneklMOFR1aVdWM3dwOWpESVcxQXQ5V2ZT?=
 =?utf-8?B?aS9jdHkrWlJKellBcXcwVkRNVVlIMVQxT002bk14QXN3ZWtqMXp2dFFxcWFo?=
 =?utf-8?B?eDRiMWRVZlYwZUlpbWNQRjZqdkp5OVZzelJIeHFRZ05PNUVpenB4a2FPL3lU?=
 =?utf-8?Q?HutAf5ilmzQGMkP9HGo4RRFwi?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffa62eb3-9950-4537-69a6-08db6cc6fdf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 11:03:32.2514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PMtyK8qHENuI5bp/ZpuL7P5RDu01B2wVf437ArxT/mNG+Wk2hPc7Kz3VX1D1RcI+Fv/sH+MsHse9DyV2M+PV3d//G+mYc66SiaMJSstheQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR05MB6993
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  >I don't really know the difference :D > >Since this a not
 any new feature patch but just solving a typo like bug. I guess >it can go
 to (net) branch instead the (net-next) ? > >Regards >Lin > It is O [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.104.112 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.104.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q9OHs-002rc3-PH
Subject: Re: [tipc-discussion] [PATCH v1] tipc: resize nlattr array to
 correct size
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

>I don't really know the difference :D
>
>Since this a not any new feature patch but just solving a typo like bug. I guess
>it can go to (net) branch instead the (net-next) ?
>
>Regards
>Lin
>
It is OK to go for net. 
Please:
- append "net" to your patch title.
- add Fixes tag to the changelog.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

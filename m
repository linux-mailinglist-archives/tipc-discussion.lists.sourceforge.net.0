Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7881073DBAB
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Jun 2023 11:45:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qDimY-00082X-Ki;
	Mon, 26 Jun 2023 09:45:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1qDimW-00082R-Oy
 for tipc-discussion@lists.sourceforge.net;
 Mon, 26 Jun 2023 09:45:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cxQrN3N6HKPmbUtPAsO86Ci4bwxurNZzK1yT+aiw9Zs=; b=LWOSdU6HpQV9Rezri8IXzbWNiX
 H8uG94bVU5dARYqAggSejgA9EGO9r4z5teoCwnJ91+7jENdmVDtLyY6w41jxa+7giFQjjpnfJ88M2
 9Bw0GyfSzi15WCrh/MfEm+gpthTPIDRfnpCuhvrN7S0k7nGBQG6+EiazSe+WlXR/K7cc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cxQrN3N6HKPmbUtPAsO86Ci4bwxurNZzK1yT+aiw9Zs=; b=bdzTTfhqZq1Gi/TPne7Ro4CsS0
 vfEoC00TKBpuQpQEPDSiyk9kfZ6kdbNvfMIqozcXFMIXE36P4r1z6AiaGVnBZlxDvqDZAXDwZUdwy
 rYb2oVpqJDCvu9TlxyGmzDZ5Uj3t23y1uh6eew1jRQuzYSYK23c6xIe1C5HNxlCUIGWc=;
Received: from mail-he1eur01on2139.outbound.protection.outlook.com
 ([40.107.13.139] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qDimN-000444-5L for tipc-discussion@lists.sourceforge.net;
 Mon, 26 Jun 2023 09:45:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbvqftMxynDlKaiZ3zg4zJIbeDvw+kVKJ1n+FRTjWxIv+7V8vP/3Gngt/9knAlf9OvWyDlUvnRtRRDZHQ+kYKhz3Q8o2gv7UUWybusTqS3lrXskTxAbFW3YbVssDVmC7eGa6Slt5uyeDgoIPslR6EQDygHisqKM9fOve0mlSvx1ev/EH5QwQJMjSv7mPHKB1RQxZiBxjlgej4qsczYMMwWX6pvLKKK1Xx3mRfN9TI8JugxFN31WljTRW6q9ofDvc7CoZyRcVhOBSDN/3YagyVtDf2wWb98uxTnKraMcVjIsoWCBZ7lP0x2ny9ZlIC3xvO/mzwAuHQ10IdoMcMqVzGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cxQrN3N6HKPmbUtPAsO86Ci4bwxurNZzK1yT+aiw9Zs=;
 b=bNdLvI+s9Ccq1PzdaBqungwpbE4TM50xJwE2xISoaBCDypw4jq2jp6AdzpLPoj5Z8H3c/rIgRF6jo5gK568vkPJxi569A1c2MdPYEMeaUlvT+1AjwRdHnlFW647cjoKWj60bLyqbRNIvmLBir2kkzGFVx++9J5orgex/c8V89o3anRTre5szZltCmtMYUnOWs5zIn0qkt0w3TVdqP42hJ5ISiyHUVvf+HqnF0v6sYNxAAhEtdGkwk+xI4DwLfUX9SJIcP8qrZnMhfyBG0jE7mGtFU1sUwxK55q/NyGCfLN4VNEg5pZoqmnNxa8RO8odniWBlbTuCBNsyqTtS4viBFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cxQrN3N6HKPmbUtPAsO86Ci4bwxurNZzK1yT+aiw9Zs=;
 b=lX44lfECDdyWqLinaHPNKe1XQ30Uk9msH/oCytVWOHCgu6n/RNTCDmlhK1MJXIgQ0KGWulN+/JNqUUPCcQY9wwUFZC3EPMXFhXtN81hjKY34Z01DRP8jH5worsWRbAMG036fOtchxo2zjsBfe58PWKEbb6jvwGB65HBPK9wcX/0=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM8PR05MB7475.eurprd05.prod.outlook.com (2603:10a6:20b:1c7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Mon, 26 Jun
 2023 09:44:53 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3%7]) with mapi id 15.20.6521.026; Mon, 26 Jun 2023
 09:44:53 +0000
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CAAAVc4cAApe8p1AAfPWUAAP7e9gACB0rUv
Date: Mon, 26 Jun 2023 09:44:53 +0000
Message-ID: <DB9PR05MB9078BDC02C2AAB5389A44BD28826A@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB90782273D2F9EF47EEF510A28822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19952E3D395722E4B1198CF8C422A@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <458eec75-58d4-97e1-ffe4-2fe9a3c9e8c6@redhat.com>
In-Reply-To: <458eec75-58d4-97e1-ffe4-2fe9a3c9e8c6@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|AM8PR05MB7475:EE_
x-ms-office365-filtering-correlation-id: b416406b-1f6e-47c4-9b89-08db7629fe78
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2UXTIuG9A54IDQtuE38TEiu++ZUvb3rZWI3n53NzcPyHZ7vgUwpii0Cbki9Wg0dywXDpbPn6F82h4lUCDXo27AP5Jrv/ATFcNBaRHf82CK5FcaI1iHMQ/anICwFaNJrJrj1Xp+05JzB8bbOG0t+CCfutH0VnmRlVz1Ocjf/Eh3n7GCrPNnp7imBQ4wEuNM2Nk4bJP1j9SRqooCe8Iq8mtrxs6Muq82k9OyAZ7ghFxjHl5jgU1AaOdPU3kBPnWtzPlIdMh86mTK7/AS9fA7zodqWV7hOKV1CkkfzjU+TOylY7E50iHdxRLiP1NaLJb0Wbrbs3ybk7ZBvHKk5e32W7EG9WA0QSP6yYdKrg2TsJ7qEdmpl4woEY7hWYOWeRCUVIBHBw63Vzb9BsF0ILrHcPnn6jA+PNDI4SqmfctpJ9okQAde2WNT60pB/wxN/M0mAKrfhR7hspuC2KX+tC4iwSKODB4Vz69o4ZhYKnWUstLCiyyQH6bnRR5qebxu1stEQGUjOfjp1CBqy93YZ1BujRYbFd3TW34Gjce4/OjF5xppNWUDqdy8Z9GoQouPp805k1fRNL1KQ3W9MRhmGJxrmqZ66xlqkrNCcllkQDXfvdClwriUDYSZ+D+lysygyoaQOgggva53iecxkGls1QTsv+4A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(136003)(39840400004)(396003)(376002)(366004)(451199021)(66446008)(71200400001)(7696005)(83380400001)(110136005)(26005)(6506007)(9686003)(15650500001)(186003)(2906002)(478600001)(5660300002)(52536014)(558084003)(33656002)(55016003)(38100700002)(122000001)(66946007)(316002)(8936002)(8676002)(41300700001)(86362001)(38070700005)(76116006)(91956017)(64756008)(66556008)(66476007)(19627405001)(237434003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KJ4Pfo54DXn/Q6TrXh1g8lLaAkKykWd9Ghj5pr/QDJG1QrzkPOAiWO2iA3?=
 =?iso-8859-1?Q?LEIcI4eMnMIeZ96GPZloOQ3ibOJ9iZKtX1lxZFZZN0kzoccINkvdb7Q4wS?=
 =?iso-8859-1?Q?Nr+Le7TQ5Roowed6/tJqs73nYXSaQ1oPdYPeDpGtoW7r2rnx5OFnN6RnGk?=
 =?iso-8859-1?Q?J3oyGW742zIKkCl4oTYEl/jlOfQNIwb8x9Q/m3LCr4lGOH9kL6+nGw8aCm?=
 =?iso-8859-1?Q?YSAyhdr8hSQY7Ll4qhd2Qwaccu/Wh5skEZDaPznPbyUqohNd2geZ5QdtV4?=
 =?iso-8859-1?Q?OrdDt+lxUUpExd2Y/ziMui3i3davUhk7/ka15rsILDHn2ZaRyUdjeezdjX?=
 =?iso-8859-1?Q?WJtm5uDapn9gCCMxSBM/60B+gmH3yWgSq1kpxpTA78vra5qLHOprr55vo2?=
 =?iso-8859-1?Q?A/+wDeldMeAnSiFwFSP0kAZNVB9XyHZ3i76yPXTP9/B78NzQx/NKcZgVP0?=
 =?iso-8859-1?Q?OrMzJIQnremS6v5sQEaxH/wwIHszv7shw0IbtSBP0Nbl68jvlO+C6NUw9y?=
 =?iso-8859-1?Q?+qJqba+1vnNF9Lbp2L+thJvzHFCSEMoBi3o/dwqp83jlGK2DIV0ztRpdsq?=
 =?iso-8859-1?Q?z5ujL7pLOjZFvt7n1o7mleUR3okU+mF+PXKyo8SHksAnQdUciwTK7CjBRz?=
 =?iso-8859-1?Q?X+4T31gha5L1sRuZVUXx0Ol52FCh7Yi2aB9APnZArnKmk0qPFC0FF39Xew?=
 =?iso-8859-1?Q?KuwySi4lc49uxE3nqq8JlSlf00MLlfC5Q2JdU5VtW2s9/SOuy7WVobzAmU?=
 =?iso-8859-1?Q?7n9gaqyndeRf5d9Y5BeVFpsjJO1PQ+tOTX8xQhO7jpdVFyFEEoD1L4x/Hm?=
 =?iso-8859-1?Q?IzgqP6FAYYRDqo3Wfd/1c6AD5m15VRiq0FiyKcZVd9YyXDT5qncKFGOdNi?=
 =?iso-8859-1?Q?S+t2Zp9J2aTIGj+Q8RXpjLerVWtbua1T0924fB85F+V0PzJMwv1p/5ZiyX?=
 =?iso-8859-1?Q?vwWRlXeWoh8BmmOijgKxTeUCHc9JKwUXgvXM6f58/TbndL5yj3ZhlYliGI?=
 =?iso-8859-1?Q?twyo94WHiJHoYwi4F7IwEIr/RuJp7IX1sWYDqTbzSrNj8dSfZ1qs2ql00Y?=
 =?iso-8859-1?Q?vXNb5RwaTk5invWsJL0J1ptg1QYv+d1569XmyenGbGxyfcnf7gzfY3e2E5?=
 =?iso-8859-1?Q?mP0OjX4t360mvFH/0HSbsC1R3HEDWnR7PfOEukYf9AGIfbSs8hpKHov1q8?=
 =?iso-8859-1?Q?VWZrs6Z2LM4Lh/deFkOQ69Z4aWrHEmvcgYPwNDNbt1YpYJ+SHMyAqx3fTj?=
 =?iso-8859-1?Q?DfKNhuBA7wE6k5Tnv7EG/TQ3u8UFCH+Im3FWMPkqlrCurkzqbJH9z3efxj?=
 =?iso-8859-1?Q?Zk0DYdvgpcIpdBm8bQJdCDLaAGUHKBWQvlwb7N8h4HZUGSKwcpw/pMuxws?=
 =?iso-8859-1?Q?6jnWzlgY+e4GjCXpTNxClMFwEBWg4SM9eEDlm5hrGNbbLjNRaXwPdAbhlI?=
 =?iso-8859-1?Q?sJHvoY5Jb/AyvbVsVc4K3GA8DtKt9XUGcUEx96ZlbcBVaxNAmNHOk2lP2/?=
 =?iso-8859-1?Q?NJWapJN5HZdywPQkvPAmsIx9Ap4HArMdDGDmHrSaIjthwh3JpG3igwEqKG?=
 =?iso-8859-1?Q?MUVIKMBP+8p17/u2zx/qjI3YhmgpNSZlzIymgbG1wNDOi+Ac9lWcC+/98z?=
 =?iso-8859-1?Q?rzM0addIZMIc1KbaZJ4mKZMOE6AUPhy6gNv/A9ZWC9MOCp+fEqfbMDLQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b416406b-1f6e-47c4-9b89-08db7629fe78
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 09:44:53.8152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vYprGEBz8hf1LgoAkfQS/d6BJyAdY8mtuuZQ6F4fcniJhg3hAEEozHN0GGIS5+c7AN2UrdR4+P4ousG9I5G8oC4WgUwuGJsDjZnbJah+Pe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR05MB7475
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > I think there was also added a command to force the name
 table updates > back to the unicast channel, but I don't remember > from
 the top of my head how it was done. Maybe Tung can fill in here? It [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.139 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.139 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qDimN-000444-5L
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC out-of-order publish message
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

> I think there was also added a command to force the name table updates
> back to the unicast channel, but I don't remember
> from the top of my head how it was done. Maybe Tung can fill in here?
It is "tipc link set broadcast REPLICAST".


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

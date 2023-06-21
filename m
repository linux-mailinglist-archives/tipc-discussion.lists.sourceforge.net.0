Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7D4737D27
	for <lists+tipc-discussion@lfdr.de>; Wed, 21 Jun 2023 10:14:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qBsz7-00048i-Kp;
	Wed, 21 Jun 2023 08:14:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1qBsz4-00048b-6D
 for tipc-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 08:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1OMM7LCA5DyX8qwToDEfHFuQgjOOCWGAwkqUZt5zBLg=; b=Y6UTLsKR6EXpJqmx8fbtHmQU1T
 XzU+k1aNHzgGLtxKTwa2OJA76dRGhrFNeQEtYf2X33eTanQsjzRR4u4x4F+tClrUmaMJ2lhBmeBSN
 vpwnrxBaWBzDCOzAudWoUO3SFHwfVw6isaWqBNa8pZtXhv6x2SLvubRC7b5qYOYV2IXI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1OMM7LCA5DyX8qwToDEfHFuQgjOOCWGAwkqUZt5zBLg=; b=Fge1fayGhxbOmtdpVOy7OSfIC2
 1MRjAz2x4NDfpDcBAm6kkvDqmQHpey+GCbcnAgGur5D87tuqeQ84dtZVGdfkmbeptjow+taAdjM7I
 M/1oYUgjsDRvQ/18wsOjxRzL9/lPfownLt1uH/HYHzjeQn4Bleq2XNKbaa8kWRiSkPvE=;
Received: from mail-vi1eur05on2092.outbound.protection.outlook.com
 ([40.107.21.92] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBsz2-00ASps-U4 for tipc-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 08:14:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7Y9JCQVw5JC8tseLvGiYerrc7fiuL3MM8drm9tKV5S5N5eNO2vOgkw+ry4q5nxICdyMtC22O7i7+achdeUx2B9F4lOVAu3ZhqOY9FPIQyrOuUHF4Tu8PH015ZZInXZCpSgTwYDoTbRRvKduuonSYiVuGMmzh2QjLlw3xBCKKkdf0F4NA5s7V/qf2qYDlU37WQDeNeGi1WgFsI1E9QbTDwszOkpdM9+QGfqjtAfUfnIplR26Pp+Exm8guEp2sgstNw56RFGsALupWjUruP44cNHJOxr/s/4Ne8RrjXHYq6EKxsNJ0VKnifM8+uKtNFY9WWALmKv09+qx+EGf/vZcWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1OMM7LCA5DyX8qwToDEfHFuQgjOOCWGAwkqUZt5zBLg=;
 b=X4jPhAwlo4MxL63DbcJ62SO3cnUpxkVIJCUeE+G1LMiLyc5+/Bab06s+XIjjFwORtAhJTTw85WOQn2UD9LVHKTZvZ3aXaREa2FGy35Dm24+WQ7eAIKkt8FU3HEi04NoksInGcoc6dERRlPvasaLqxi3dZmVGZVszzyUVovJY1cyLotOfitGE36k49DtXgopiKAH7e3SUY9LBJTz52LW5eRkBDxLoMSPyP5OT6jtlOq4tlxAE70utHAMZAFPnxG6p9tUKrOKO3AowurVmBzalOCN4F/4RsPOobYuFxLldbtdH8pdxKxo2i6Mo7Wc8K/u+i7QMbYcY+ald9enWkOyxvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1OMM7LCA5DyX8qwToDEfHFuQgjOOCWGAwkqUZt5zBLg=;
 b=w+DIjQ4OaH90UnusOw6Ar7Hoi0n+PtvcKqxfIv69u1hPYY+FwMH/qCgxv+W2gba/ICqtgh8720zqdd8zFavfhYMKpVeGd3b+B/6+LZNj006yf7iwuQZQD41n1/S3S+1bYDVjxOstj9lnVHICAt9vyMcaPPy2AJZg7Pt61zprgII=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by PR3PR05MB7132.eurprd05.prod.outlook.com (2603:10a6:102:63::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Wed, 21 Jun
 2023 06:41:11 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3%7]) with mapi id 15.20.6521.023; Wed, 21 Jun 2023
 06:41:11 +0000
To: Rune Torgersen <runet@innovsys.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3
Date: Wed, 21 Jun 2023 06:41:11 +0000
Message-ID: <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
In-Reply-To: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|PR3PR05MB7132:EE_
x-ms-office365-filtering-correlation-id: 7636a4a1-6910-4c49-d8f4-08db722280b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QZCrIPVzbEtCLG5mWMT8tnSKLjPXOIkiU4CnNsj8eJEZFZFrkrb0oxCzR0OngSj+sdAJgWWMSRZ/iukXFDkz8Yiz7KFe2UY7LI5uHYqQJyvQdYXG+ss/e4mtXdbjkb4hgHq+gwFD/9AzbaMBHm/vGCCUCx9MLELXHhxk8wgEU7alCCgkNP8sApMwsXoEaAK/2rhNqxbv6BP9gJO9ySNHDoe7bIpaxEQka2CFF7p/TGZusiKGGmxI6h4VBpP3gceInGqLQOdgp19Bo/W2c4Y6rfnZ6pbFgwV8AxZfg1V2aBMAaSxgHL0ktzLx4Lbny38bfv3WdKTpW6nFp/lauUmkd+oLsCYW04IktGjBBJ36B7TbAa2C26H9aGbt2YGb02ks8gcS5gRMYr9NJ05Mb3FXxkpN617Z5sL/sM6GqI3So0ByLV7eGgHSCYrNJNebGirCADTNf7mSfW0ycq2zSITfz0RJQJfjS+Vv8hZFWk5D7Gjs9q5nEv5IoDHVQobmLGbRCikX4fxyytlG022VLwUBhvN5MQUtzVNxFDbipIlV0DLtZ9BePiRN+yVuUGL0bESGQTbScY+gJqe83j7SNaHHq0EwllaM9PyBodakjLJDIQxIPvwR7H79+A/zLgez+X3E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(366004)(376002)(39850400004)(396003)(136003)(451199021)(19627405001)(7696005)(71200400001)(478600001)(110136005)(91956017)(76116006)(83380400001)(86362001)(33656002)(38070700005)(55016003)(15650500001)(4744005)(2906002)(66946007)(186003)(9686003)(6506007)(26005)(38100700002)(122000001)(64756008)(316002)(66446008)(66476007)(41300700001)(66556008)(8936002)(8676002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?vIX4lOFxBq+9xDr+OwVX+wAuUHiRAkkV5IkyJqgEgUEP593/9W1Ab6ooOp?=
 =?iso-8859-1?Q?AVY7LdSVT3PTI4NFNoKQc/Bd0Z/rqjXP8Nw73rota3CKtUelh7JtjEzs0y?=
 =?iso-8859-1?Q?SruSqiqaePuFshnE2+pBwDLF8KsWqh8buiAmGmbwJ72KRC07koSwVRDs8O?=
 =?iso-8859-1?Q?wOBRgeMJuk/SrvqPbwdq8FXS6mz0VbdfdsvNAHTgmHukCQw7xNolZRmZWc?=
 =?iso-8859-1?Q?RYlUrnIsauowQ+cb2SOq668wujY/HPC9eygKq6xYsajjNy3dqO2EMP/wv3?=
 =?iso-8859-1?Q?et2KbtEAbaEPsabRVXRJ4+8oBliWZt8Whj0g/CAwLaEWZYFvVzY5cpelkF?=
 =?iso-8859-1?Q?jHtyrcPb7jF6HVN+GuvHrhRif6iaOkOEfmeFvwAQ/1CwACiFjSj9VXVyC2?=
 =?iso-8859-1?Q?KKrZrtVswWkfrtgJNczTWQeQpXGbu2VIm0UuiMOqVJAVCt1s7Tvaqtc3TH?=
 =?iso-8859-1?Q?TiPmnbzmRaNtWuxpz58b1MaZnaLgZMyT12nCpVY7sMD53siY8zOsdvO8QP?=
 =?iso-8859-1?Q?QWsmLVsIrJ0sugem6kzX7u32Yx6egyrPOMdemsJuSHRgON1MwgOSBeZ6li?=
 =?iso-8859-1?Q?0DvADqsDQgpgJ+3ygF2+vrOPKGOBI8Xpu5dN70+hR3xi1D7j9t3V5Lpr15?=
 =?iso-8859-1?Q?gUEbRv+6Deu0645rId44HcwWe+9yLFRsHNCoL+4AfHdNWlPGzBrSp1MH1X?=
 =?iso-8859-1?Q?pvNv2h9H6C7nqrcmoBXoJGuN4mv0kT8eF9FSna32RogxXmQtpdlO5HZvY3?=
 =?iso-8859-1?Q?Ej779jPXH/vTfa0bdDrrIA3SDSpaee3KBixoN3r7OTLkISWxSIxc3eJfb5?=
 =?iso-8859-1?Q?DlvpLmXXFwh0iQFgTmGjE4V4/aq+UkOnnbvYXRlGdVVjaCnqSw7Hwrioxu?=
 =?iso-8859-1?Q?Z3ejBb9VEOWOiTUUwcc6XPnxSpO49v7HSTPxxDvjhfFSMSjEbIiSWEIYCr?=
 =?iso-8859-1?Q?HL+8iZBkruz655LQ/w6hLdU3q0QxqcU1ayYB7zTOXseJuck63g7++vfWHX?=
 =?iso-8859-1?Q?CCnQxmGSImnrRHiNHMM7DzQL3ww31WKXu8iLENGg+DSAewJ9VKExslF+hx?=
 =?iso-8859-1?Q?BRJ80/7v+j6quAeSji0RaEKT40n2jZinXjcnhCDYIa4+FspASO/FuBgJ1Z?=
 =?iso-8859-1?Q?RtHUwjntwHn3seDPOUhB4cO7CjIhHXBimGJ4gBTyH8ljHYg7pQNswv2IWx?=
 =?iso-8859-1?Q?AGT7fPcCo/nTUO5xmFYI7JPpR2P7suEbGiHZxFz8WWdd+9t6nEUP9w5/WX?=
 =?iso-8859-1?Q?EpfBYjC2Xi/eL4A9FMdAdDd0MxhHGHW6hu8nK2GLRVtL4X1XtUOC4/HQci?=
 =?iso-8859-1?Q?qRtWV0SLD2G/y/hqYMyt7ijBhoEGU0hT48fQQcwipN3dK0o4sZ74N/b1gW?=
 =?iso-8859-1?Q?xPFuvGDTB6JeWjUZer3Fz8oRdlcjJrTE/xKorOJZfycrK6ryO9H7P+EODc?=
 =?iso-8859-1?Q?k1ARWeR2Ef0BHHiHyMp8ARsYuLDJyOePjyPGwVa4Py4z0QnlhsBSznkSLf?=
 =?iso-8859-1?Q?F/g3/cnh8ht81CdUrLzPax4C8ajvQn24d28T4qz/6ckSdvbNmtQek0wNL2?=
 =?iso-8859-1?Q?P/bAdFkaY9TC+yw5y9fSpPlayovxMWHFEqOVXS821MrK7HmPtxBCcJbxts?=
 =?iso-8859-1?Q?Rzs135yxPcnOnR8FL4bTH3CSzdqhzxvzZnSI9ocoV1Kl8rjKhhGgPalw?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7636a4a1-6910-4c49-d8f4-08db722280b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 06:41:11.6149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qhn8c1anuhwfjkLeBDNbYTdjjB43niYAzd2Nvq8vfVxWRo36C/XTAC/QBj1eM/jba+H0zmOSoDE9DbpDZkTw1d9QOdNHH9pNt4uMTUW7T6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR05MB7132
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > if (-1 == bind(sock, (struct sockaddr*)&listen_addr,
 sizeof(struct
 sockaddr_tipc))) > perror("Error opening TIPC socket"); > *(int*)buf = addr;
 > int rc = sendto(sock, buf, sendsize, 0, (struct sockaddr*)&to_addr,
 sizeof(to_addr)); 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.92 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.92 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qBsz2-00ASps-U4
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


>        if (-1 == bind(sock, (struct sockaddr*)&listen_addr, sizeof(struct sockaddr_tipc)))
>          perror("Error opening TIPC socket");

 >       *(int*)buf = addr;
 >       int rc = sendto(sock, buf, sendsize, 0, (struct sockaddr*)&to_addr, sizeof(to_addr));

You are not recommended to design your application this way.
Published messages are TIPC internal messages. There is no guarantee that they and user data messages are sent/received in correct order. Especially, since kernel 5.10, Published messages are sent on Broadcast link whereas user data messages are sent on Unicast link.
These links have different send queues, sequence numbering engines etc. So, what you showed in TCP dump is an expected behavior.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

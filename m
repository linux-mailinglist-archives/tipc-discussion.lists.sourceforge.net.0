Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB8B6E806
	for <lists+tipc-discussion@lfdr.de>; Fri, 19 Jul 2019 17:35:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hoUvD-0002Rj-RW; Fri, 19 Jul 2019 15:35:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hoUv7-0002Qy-OL
 for tipc-discussion@lists.sourceforge.net; Fri, 19 Jul 2019 15:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hrHT0AjmtxBbSFBnHgfCsYycfcIPGGmz1cMLsk+aHvM=; b=TB+7e/iWI5O3UhWyFmT+B2cL1w
 OFG9CS6APxKB3/bIEu/UtTqxRXfUEC/OvRjt0eCl3zJST0IwM/BnnpgihypLcuTa3GHetXbsdxHDy
 GkQz7bkya7fO1rPZpj0oDqbxY0Omr7YIPnQDa7tlAgi6QavmMUPivHO4S0N3B2Z1gt1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hrHT0AjmtxBbSFBnHgfCsYycfcIPGGmz1cMLsk+aHvM=; b=i50RRmZYkMWP3PtGb8ih3th6nV
 jNgt5+Q8wRglyr6bffI6BHhn2la1H+Qt9seHJOJpANsiL9hFbqgvHSqUwRjz7eeaaPNcaDeJYcRGc
 wOdvK+r2WmwADYdkiAOBTP18QEmWWWDQmn1oADYXxm9YX2x4eYDnf/vCXdv/uxLjW3yE=;
Received: from mail-eopbgr820054.outbound.protection.outlook.com
 ([40.107.82.54] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hoUv2-008a4S-8c
 for tipc-discussion@lists.sourceforge.net; Fri, 19 Jul 2019 15:35:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U0QQyU/vbOhuFafK7vP8vI/uyyUySeSw2ZuPZnVUD+FzrEqTb6uhMAXaKqFGyAgOVNP8bO+/C3u6XFee7E4hFo7uD964+zf/2dRLbEw9Y0zUoeqefQL2+FcSFKa07iv3EWjqsKTRQ6GYUV3buhSca36uJHetIB24QowEaPedZKr2ND2PZMGmElcemJhsAEagp9twkZBNejrxDTwsyTZASD5FQX4mVyza2mYZ3+I3l0OBYCxBEGwqc9HGLY5cJnKtR5jq3DnUTigyZGB/Uu7YjIcojNJp9AraBHiklBJBxRK+Rkh/gVNlUXDi/kUaapFdvfPvfJZD+iRUZbOWCYQQkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hrHT0AjmtxBbSFBnHgfCsYycfcIPGGmz1cMLsk+aHvM=;
 b=XikKI+wIGuaAj+U/bXW149+fyx3/sw9xBpl08dvNDSUlWDglu8MjWVHTLuDEiYkwDh8X3KKaFz7k3AvOeH17xAfrva6tPChG8sbglV/ZldLErrLbdDn7JjKS4XqFEWm5UcK47YpnYIn0DlsQlY159PugW209Hv9G4dxzpla88bI+eS5P2cbRZDZ6eaIVdQJzFaE6kdO2xcTXcocoXg4jIhEFGYYF8eCKZXFzZqkYlUR9rmZtAR5xkKZf31PUvdgm0seyfJBPwjtQU2+BMS8oeydAMLCCxA6MBFBb3Ee6PihJ3YbswsbJ74K4EEwNBXxN6iIT43dyc8f/0jOV42SfAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=ericsson.com;dmarc=pass action=none
 header.from=ericsson.com;dkim=pass header.d=ericsson.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hrHT0AjmtxBbSFBnHgfCsYycfcIPGGmz1cMLsk+aHvM=;
 b=ZniEEWqTXEnXA7tVvcoPLxcqVHaHyaHYDTaCUt/YLX7jjlszSE47UIidtCIIi52qV1Ulyq1KePTigWJMJam7K4bISp+/MyiFjLVYm8gCJjeXyOMxDE5G5JIzClcaENU55sDBJgycMIdt5dQlouttqxmGuZNN2bhH67FENe2oIT4=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3654.namprd15.prod.outlook.com (52.132.229.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 19 Jul 2019 15:35:27 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2094.013; Fri, 19 Jul 2019
 15:35:27 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>, 'Jon Maloy'
 <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>
Thread-Topic: [net  1/1] tipc: reduce risk of wakeup queue starvation
Thread-Index: AQHVPOILAC0s9uKAX0SvO0nYr8c7BqbPSxlwgADbIgCAAD7A4IABCk+AgACVlCA=
Date: Fri, 19 Jul 2019 15:35:26 +0000
Message-ID: <CH2PR15MB3575650A2B11E76F71E3B6BF9ACB0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1563396954-8686-1-git-send-email-jon.maloy@ericsson.com>
 <CH2PR15MB3575E1B36604EB2C6EA1FC449AC90@CH2PR15MB3575.namprd15.prod.outlook.com>
 <08ce01d53d50$02d725b0$08857110$@dektech.com.au>
 <CH2PR15MB3575E31F133FFC3F0C8745939ACB0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <09d501d53df4$8a9569e0$9fc03da0$@dektech.com.au>
In-Reply-To: <09d501d53df4$8a9569e0$9fc03da0$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3fbc5a93-d4d1-46ca-279c-08d70c5eb958
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3654; 
x-ms-traffictypediagnostic: CH2PR15MB3654:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3654F7F3B2F968C9BFDA22149ACB0@CH2PR15MB3654.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:758;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(136003)(376002)(346002)(13464003)(199004)(189003)(81156014)(486006)(44832011)(186003)(76176011)(11346002)(66066001)(53936002)(52536014)(14444005)(102836004)(26005)(2201001)(53546011)(6506007)(2501003)(256004)(305945005)(14454004)(4326008)(99286004)(476003)(33656002)(71200400001)(316002)(110136005)(76116006)(71190400001)(25786009)(229853002)(54906003)(66446008)(64756008)(6436002)(66556008)(66476007)(74316002)(8676002)(53946003)(66946007)(3846002)(478600001)(6116002)(86362001)(8936002)(7696005)(9686003)(55016002)(6246003)(5660300002)(2906002)(81166006)(7736002)(30864003)(446003)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3654;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9qQMTmXkUeuCKCxoBeJyKJZ2mvdCRCAsU1LiVTd8tW6zMU6+WJ8GKv91y7BmJrauzsB7h2SNavHL5Ni8nylYyJfpKEOtFPW10Zppnd2phKTICYriogfWdwCT0AAxkDrFxKvAhKtpzYEvR6Iyt0oeb3LMdakTePK/54PO+H2LTF0wmPXWCgOfUURuuDn5XMPDiBfbkg7Cp7Q2Rj6ycodwBClkMAR0GHa+tffErUlOHt1uGkZCPjCmYFBLYWYa7ghkurqXYmvTTvJIsETLZrzTcNx6nflkWOqQTA8R3zL1IuQApRzFmjVbx93elozifrik0iEkFuiFkjgVuaTEyMuR52BaSe8AM18T6M7ORlpd9Dq0mRbgSuUnbEDeKWA/0ktZBYT/mkFkPdVgYFV9b6iKPmskjz+77QkJ8TtlqC9v0QY=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fbc5a93-d4d1-46ca-279c-08d70c5eb958
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 15:35:27.0466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3654
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hoUv2-008a4S-8c
Subject: Re: [tipc-discussion] [net 1/1] tipc: reduce risk of wakeup queue
 starvation
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

See below.

> -----Original Message-----
> From: tung quang nguyen <tung.q.nguyen@dektech.com.au>
> Sent: 19-Jul-19 01:41
> To: Jon Maloy <jon.maloy@ericsson.com>; 'Jon Maloy'
> <maloy@donjonn.com>; tipc-discussion@lists.sourceforge.net;
> ying.xue@windriver.com
> Cc: Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; John Rutherford
> <john.rutherford@dektech.com.au>
> Subject: RE: [net 1/1] tipc: reduce risk of wakeup queue starvation
> 
> Hi Jon,
> 
> See below.
> 
> Best regards,
> Tung Nguyen
> 
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Friday, July 19, 2019 10:05 AM
> To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; 'Jon Maloy'
> <maloy@donjonn.com>; tipc-discussion@lists.sourceforge.net;
> ying.xue@windriver.com
> Cc: Mohan Krishna Ghanta Krishnamurthy
> <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Canh Duc Luu
> <canh.d.luu@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> <gordan.mihaljevic@dektech.com.au>
> Subject: RE: [net 1/1] tipc: reduce risk of wakeup queue starvation
> 
> Hi Tung,
> I did of course do some measurements before sending out the patch
> yesterday, but I saw no significant difference in performance between the
> methods.
> The results were within the range of normal, stochastic variations, and making
> many runs only confirmed that.
> This was also what I was expecting.
> 
> I have now made a couple of changes to my patch:
> 1) I took into account that backlog[imp].len often is larger than
> backlog[imp].limit (because of the oversubscription) when calculating the
> available number of backlog queue slots, resulting in a negative avail[imp]
> value.  This would have the effect that we sometimes keep submitting wakeup
> jobs when there are no slots left in the backlog queue. Those jobs will be
> launched, run, immediately find that we are at congestion again, and be
> suspended a second time. That is, a gross waste of CPU resources. (This is a
> weakness of your algorithm, too)
> [Tung]: Exactly but the lists of skb are added to the link backlog queues after
> this "Those jobs will be launched, run, immediately find that we are at
> congestion again". That's the reason I chose to schedule all wakeup messages
> right after the condition is met. All sleeping sockets will be waken up and send
> their messages to link backlog queues before being put into sleeping state
> again. With that, we can reduce the risk of starvation.

True. But doing it this way is a very aggressive approach, as the backlog queues may grow *very* long. The use of oversubscription does in practice mean overriding the backlog queue limit, and my fear is that those can accumulate to insane lengths. If you look at the statistics in my previous mail, you will see that 94 wakeup jobs for 65536 byte messages means that  94 * 46 = 4324 packets have been added to the queue *beyond* the backlog queue limit. And nothing is stopping it from growing further if new sockets come along and start transmitting.
My algorithm is an attempt to limit this effect, so that we only wake up as many jobs as we think there is space for in the backlog queue. 

The algorithm is far from perfect. E.g., when counting free slots in the backlog queue we count packets, while each job we launch may send multi-packet messages. 
I.e., if we in the example above have freed up 10 slots in the backlog queue, we launch 10 jobs, which each and one will add 46 packets to the queue, a total of 460 packets. The remaining 84 jobs will have to wait, maybe with another risk of starvation. We should try to figure out if this can be done in a smarter way somehow.


> Your patch V2 was exactly my first patch except the prepending of wakeup
> messages to the queue tail. But I thought more about above-mentioned
> scenario and changed to the patch I sent to you to avoid the risk completely.
> 
> 2) After adding some statistics counters, I realized that there are practically
> never any wakeup messages in the input queue when we run
> prepare_wakeup(), so we can just as well skip the slightly expensive step to
> count and reschedule those jobs. This may lead to that we at rare occasions
> issue too many wakeup jobs, but it is  seems to be worth the cost.
> 
> 3) I added the wakeup jobs to the tail of the input queue, instead of to the
> head, so they will be run after regular input queue messages. I felt slightly
> uncomfortable with prepending the wakeup messages, as it might lead to
> surprising new behaviors.  This is in practice what you are doing, too, since
> you check the wakeup queue and call tipc_sk_wakeup_rcv() after we have
> checked the input queue and calles tipc_sk_rcv().
> 
> I also re-ran my measurements with the new version, many times, and the
> pattern was always the same.
> [Tung]: I verified and confirm it. It is better than the first version which
> showed very bad result in all my rounds of execution.
> Let's wait and see if this patch could fix the issue.

Yes. If it doesn't, we will have to eliminate the "available backlog slot" limitation again, like you did in your algorithm, but I would prefer to avoid that.
In my view, chances are good that this will work, I think the real culprit was the 10-limit counter which was accumulated across all importance levels.

BR
///jon

> 
> Below is a sample.
> 
> No patch:
> -------------
> 
> node1 ~ # bmc -t -c100
> ****** TIPC Benchmark Client Started ****** Transferring 64000 messages
> in TIPC Throughput Benchmark
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
> |
> |  [octets]  | Conns |    Conn   |  [ms]
> +------------------------------------------------+
> |            |       |           |           | Total [Msg/s] | Total [Mb/s]
> | Per Conn [Mb/s] |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |        64  |  100  |    64000  |     5635  |      1135714  |         581
> |              5  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |       256  |  100  |    32000  |     4221  |       758006  |        1552
> |             15  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |      1024  |  100  |    16000  |     9023  |       177316  |        1452
> |             14  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |      4096  |  100  |     8000  |    10238  |        78139  |        2560
> |             25  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |     16384  |  100  |     4000  |    15651  |        25557  |        3349
> |             33  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |     65536  |  100  |     2000  |    29197  |         6849  |        3590
> |             35  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> Completed Throughput Benchmark
> ****** TIPC Benchmark Client Finished ******
> node1 ~ #
> 
> Tung's patch:
> -----------------
> node1 ~ # bmc -t -c100
> ****** TIPC Benchmark Client Started ****** Transferring 64000 messages
> in TIPC Throughput Benchmark
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
> |
> |  [octets]  | Conns |    Conn   |  [ms]
> +------------------------------------------------+
> |            |       |           |           | Total [Msg/s] | Total [Mb/s]
> | Per Conn [Mb/s] |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |        64  |  100  |    64000  |     5906  |      1083527  |         554
> |              5  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |       256  |  100  |    32000  |     3510  |       911531  |        1866
> |             18  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |      1024  |  100  |    16000  |     9594  |       166755  |        1366
> |             13  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |      4096  |  100  |     8000  |     9738  |        82144  |        2691
> |             26  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |     16384  |  100  |     4000  |    15760  |        25379  |        3326
> |             33  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |     65536  |  100  |     2000  |    30615  |         6532  |        3424
> |             34  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> Completed Throughput Benchmark
> ****** TIPC Benchmark Client Finished ******
> node1 ~ #
> 
> Jon's patch, v2:
> -----------------
> node1 ~ # bmc -t -c100
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
> |
> |  [octets]  | Conns |    Conn   |  [ms]
> +------------------------------------------------+
> |            |       |           |           | Total [Msg/s] | Total [Mb/s]
> | Per Conn [Mb/s] |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |        64  |  100  |    64000  |     5465  |      1171064  |         599
> |              5  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |       256  |  100  |    32000  |     3270  |       978490  |        2003
> |             20  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |      1024  |  100  |    16000  |     6987  |       228964  |        1875
> |             18  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |      4096  |  100  |     8000  |     9562  |        83657  |        2741
> |             27  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |     16384  |  100  |     4000  |    15603  |        25635  |        3360
> |             33  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> |     65536  |  100  |     2000  |    28385  |         7045  |        3693
> |             36  |
> +-----------------------------------------------------------------------
> +----
> ------------------+
> Completed Throughput Benchmark
> ****** TIPC Benchmark Client Finished ******
> node1 ~ #
> 
> BR
> ///jon
> 
> 
> > -----Original Message-----
> > From: tung quang nguyen <tung.q.nguyen@dektech.com.au>
> > Sent: 18-Jul-19 06:03
> > To: Jon Maloy <jon.maloy@ericsson.com>; 'Jon Maloy'
> > <maloy@donjonn.com>; tipc-discussion@lists.sourceforge.net;
> > ying.xue@windriver.com
> > Cc: Mohan Krishna Ghanta Krishnamurthy
> > <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> > parthasarathy.bhuvaragan@gmail.com; Hoang Huu Le
> > <hoang.h.le@dektech.com.au>; Canh Duc Luu
> <canh.d.luu@dektech.com.au>;
> > Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> > <gordan.mihaljevic@dektech.com.au>
> > Subject: RE: [net 1/1] tipc: reduce risk of wakeup queue starvation
> >
> > Hi Jon,
> >
> > You patch is too complex. There will be a lot of overheads when
> > grabbing/releasing locks (3 times) and using 2 loops.
> > As a result, performance of benchmark test is reduced significantly
> > while
> my
> > patch shows the same performance with the original code.
> >
> > This is the comparison between my patch and yours after running
> > benchmark using 100 connections (Message size in bytes: x% better):
> > - 64: 23.5%
> > - 256: 30.2%
> > - 1024: 19.5%
> > - 4096: 14.9%
> > - 16384: 6.7%
> > - 65536: 2.4%
> >
> > So, I do not think your patch would solve the issue.
> >
> > Thanks.
> >
> > Best regards,
> > Tung Nguyen
> >
> > -----Original Message-----
> > From: Jon Maloy <jon.maloy@ericsson.com>
> > Sent: Thursday, July 18, 2019 4:22 AM
> > To: Jon Maloy <maloy@donjonn.com>
> > Cc: Mohan Krishna Ghanta Krishnamurthy
> > <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> > parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> > <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> > <hoang.h.le@dektech.com.au>; Canh Duc Luu
> <canh.d.luu@dektech.com.au>;
> > Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> > <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> > discussion@lists.sourceforge.net
> > Subject: RE: [net 1/1] tipc: reduce risk of wakeup queue starvation
> >
> > Hi Tung,
> > After thinking more about this, I realized that the problem is a
> > little
> more
> > complex than I first imagined.
> > We must also take into account that there may still be old wakeup
> > messages
> in
> > the input queue when we are trying to add new ones. Those may be
> > scattered around in the input queue because  new data messages have
> > arrived before they were scheduled.
> > So, we must make sure that those are still placed at the head of the
> > input queue, before any new wakeup messages, which should be before
> > any data messages.
> > Those messages should also be counted when we calculate the available
> space
> > in the backlog queue, so that there is never more pending wakeup jobs
> > than there are available slots in in that queue.
> > So, I ended up with writing my own patch for this, I hope you don't mind.
> > I tested this as far as I could, but I assume you have a more relevant
> test
> > program than me for this.
> >
> > BR
> > ///jon
> >
> >
> > > -----Original Message-----
> > > From: Jon Maloy
> > > Sent: 17-Jul-19 16:56
> > > To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy
> > <maloy@donjonn.com>
> > > Cc: Mohan Krishna Ghanta Krishnamurthy
> > > <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> > > parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> > > <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> > > <hoang.h.le@dektech.com.au>; Canh Duc Luu
> > <canh.d.luu@dektech.com.au>;
> > > Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> > > <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> > > discussion@lists.sourceforge.net
> > > Subject: [net 1/1] tipc: reduce risk of wakeup queue starvation
> > >
> > > In commit 365ad353c256 ("tipc: reduce risk of user starvation during
> > > link
> > > congestion") we allowed senders to add exactly one list of extra
> > > buffers
> > to the
> > > link backlog queues during link congestion (aka "oversubscription").
> > However,
> > > the criteria for when to stop adding wakeup messages to the input
> > > queue when the overload abates is inaccurate, and may cause
> > > starvation problems during very high load.
> > >
> > > Currently, we stop adding wakeup messages after 10 total failed
> > > attempts where we find that there is no space left in the backlog
> > > queue for a
> > certain
> > > importance level. The counter for this is accumulated across all
> > > levels,
> > which
> > > may lead the algorithm to leave the loop prematurely, although there
> > > may
> > still
> > > be plenty of space available at some levels.
> > > The result is sometimes that messages near the wakeup queue tail are
> > > not added to the input queue as they should be.
> > >
> > > We now introduce a more exact algorithm, where we don't stop adding
> > > messages until all backlog queue levels have have saturated or there
> > > are
> > no
> > > more wakeup messages to dequeue.
> > >
> > > Fixes: 365ad35 ("tipc: reduce risk of user starvation during link
> > congestion")
> > > Reported-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> > > Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> > > ---
> > >  net/tipc/link.c | 43 +++++++++++++++++++++++++++++++++++--------
> > >  1 file changed, 35 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/net/tipc/link.c b/net/tipc/link.c index
> > > 66d3a07..1f41523
> > 100644
> > > --- a/net/tipc/link.c
> > > +++ b/net/tipc/link.c
> > > @@ -853,18 +853,45 @@ static int link_schedule_user(struct tipc_link
> > > *l, struct tipc_msg *hdr)
> > >   */
> > >  static void link_prepare_wakeup(struct tipc_link *l)  {
> > > +	struct sk_buff_head *wakeupq = &l->wakeupq;
> > > +	struct sk_buff_head *inputq = l->inputq;
> > >  	struct sk_buff *skb, *tmp;
> > > -	int imp, i = 0;
> > > +	struct sk_buff_head tmpq;
> > > +	int avail[5] = {0,};
> > > +	int imp = 0;
> > > +
> > > +	__skb_queue_head_init(&tmpq);
> > > +
> > > +	for (; imp <= TIPC_SYSTEM_IMPORTANCE; imp++)
> > > +		avail[imp] = l->backlog[imp].limit - l->backlog[imp].len;
> > >
> > > -	skb_queue_walk_safe(&l->wakeupq, skb, tmp) {
> > > +	/* Already pending wakeup messages in inputq must come first */
> > > +	spin_lock_bh(&inputq->lock);
> > > +	skb_queue_walk_safe(inputq, skb, tmp) {
> > > +		if (msg_user(buf_msg(skb)) != SOCK_WAKEUP)
> > > +			continue;
> > > +		__skb_unlink(skb, inputq);
> > > +		__skb_queue_tail(&tmpq, skb);
> > >  		imp = TIPC_SKB_CB(skb)->chain_imp;
> > > -		if (l->backlog[imp].len < l->backlog[imp].limit) {
> > > -			skb_unlink(skb, &l->wakeupq);
> > > -			skb_queue_tail(l->inputq, skb);
> > > -		} else if (i++ > 10) {
> > > -			break;
> > > -		}
> > > +		if (avail[imp])
> > > +			avail[imp]--;
> > >  	}
> > > +	spin_unlock_bh(&inputq->lock);
> > > +
> > > +	spin_lock_bh(&wakeupq->lock);
> > > +	skb_queue_walk_safe(wakeupq, skb, tmp) {
> > > +		imp = TIPC_SKB_CB(skb)->chain_imp;
> > > +		if (!avail[imp])
> > > +			continue;
> > > +		avail[imp]--;
> > > +		__skb_unlink(skb, wakeupq);
> > > +		__skb_queue_tail(&tmpq, skb);
> > > +	}
> > > +	spin_unlock_bh(&wakeupq->lock);
> > > +
> > > +	spin_lock_bh(&inputq->lock);
> > > +	skb_queue_splice(&tmpq, inputq);
> > > +	spin_unlock_bh(&inputq->lock);
> > >  }
> > >
> > >  void tipc_link_reset(struct tipc_link *l)
> > > --
> > > 2.1.4
> >
> 



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
